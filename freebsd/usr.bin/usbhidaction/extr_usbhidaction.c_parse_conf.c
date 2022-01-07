
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_item {int kind; int usage; int flags; int usage_minimum; int usage_maximum; } ;
struct hid_data {int dummy; } ;
struct command {int line; int anyvalue; int value; int debounce; int lastseen; int lastused; char* action; void* name; struct hid_item item; struct command* next; } ;
typedef int report_desc_t ;
typedef int FILE ;


 int HID_PAGE (int) ;
 int HIO_CONST ;
 int LOG_WARNING ;
 int SIZE ;
 int atoi (char*) ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*,int,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int freecommands (struct command*) ;

 int hid_end_parse (struct hid_data*) ;

 scalar_t__ hid_get_item (struct hid_data*,struct hid_item*) ;

 struct hid_data* hid_start_parse (int ,int,int) ;
 char* hid_usage_in_page (int) ;
 char* hid_usage_page (int ) ;
 scalar_t__ isdemon ;
 scalar_t__ isspace (int ) ;
 struct command* malloc (int) ;
 int peek (int *) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 int sscanf (char*,char*,...) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 int strlen (char*) ;
 int * strrchr (char*,char) ;
 int syslog (int ,char*,char const*,int,char*) ;
 int verbose ;
 int warnx (char*,char*) ;

struct command *
parse_conf(const char *conf, report_desc_t repd, int reportid, int ignore)
{
 FILE *f;
 char *p;
 int line;
 char buf[SIZE], name[SIZE], value[SIZE], debounce[SIZE], action[SIZE];
 char usbuf[SIZE], coll[SIZE], *tmp;
 struct command *cmd, *cmds;
 struct hid_data *d;
 struct hid_item h;
 int inst, cinst, u, lo, hi, range, t;

 f = fopen(conf, "r");
 if (f == ((void*)0))
  err(1, "%s", conf);

 cmds = ((void*)0);
 for (line = 1; ; line++) {
  if (fgets(buf, sizeof buf, f) == ((void*)0))
   break;
  if (buf[0] == '#' || buf[0] == '\n')
   continue;
  p = strchr(buf, '\n');
  while (p && isspace(peek(f))) {
   if (fgets(p, sizeof buf - strlen(buf), f) == ((void*)0))
    break;
   p = strchr(buf, '\n');
  }
  if (p)
   *p = 0;
  if (sscanf(buf, "%s %s %s %[^\n]",
      name, value, debounce, action) != 4) {
   if (isdemon) {
    syslog(LOG_WARNING, "config file `%s', line %d"
           ", syntax error: %s", conf, line, buf);
    freecommands(cmds);
    return (((void*)0));
   } else {
    errx(1, "config file `%s', line %d,"
         ", syntax error: %s", conf, line, buf);
   }
  }
  tmp = strchr(name, '#');
  if (tmp != ((void*)0)) {
   *tmp = 0;
   inst = atoi(tmp + 1);
  } else
   inst = 0;

  cmd = malloc(sizeof *cmd);
  if (cmd == ((void*)0))
   err(1, "malloc failed");
  cmd->next = cmds;
  cmds = cmd;
  cmd->line = line;

  if (strcmp(value, "*") == 0) {
   cmd->anyvalue = 1;
  } else {
   cmd->anyvalue = 0;
   if (sscanf(value, "%d", &cmd->value) != 1) {
    if (isdemon) {
     syslog(LOG_WARNING,
            "config file `%s', line %d, "
            "bad value: %s (should be * or a number)\n",
            conf, line, value);
     freecommands(cmds);
     return (((void*)0));
    } else {
     errx(1, "config file `%s', line %d, "
          "bad value: %s (should be * or a number)\n",
          conf, line, value);
    }
   }
  }

  if (sscanf(debounce, "%d", &cmd->debounce) != 1) {
   if (isdemon) {
    syslog(LOG_WARNING,
           "config file `%s', line %d, "
           "bad value: %s (should be a number >= 0)\n",
           conf, line, debounce);
    freecommands(cmds);
    return (((void*)0));
   } else {
    errx(1, "config file `%s', line %d, "
         "bad value: %s (should be a number >= 0)\n",
         conf, line, debounce);
   }
  }

  coll[0] = 0;
  cinst = 0;
  for (d = hid_start_parse(repd, 1 << 128, reportid);
       hid_get_item(d, &h); ) {
   if (verbose > 2)
    printf("kind=%d usage=%x\n", h.kind, h.usage);
   if (h.flags & HIO_CONST)
    continue;
   switch (h.kind) {
   case 128:
    if (h.usage_minimum != 0 ||
        h.usage_maximum != 0) {
     lo = h.usage_minimum;
     hi = h.usage_maximum;
     range = 1;
    } else {
     lo = h.usage;
     hi = h.usage;
     range = 0;
    }
    for (u = lo; u <= hi; u++) {
     if (coll[0]) {
      snprintf(usbuf, sizeof usbuf,
        "%s.%s:%s", coll+1,
        hid_usage_page(HID_PAGE(u)),
        hid_usage_in_page(u));
     } else {
      snprintf(usbuf, sizeof usbuf,
        "%s:%s",
        hid_usage_page(HID_PAGE(u)),
        hid_usage_in_page(u));
     }
     if (verbose > 2)
      printf("usage %s\n", usbuf);
     t = strlen(usbuf) - strlen(name);
     if (t > 0) {
      if (strcmp(usbuf + t, name))
       continue;
      if (usbuf[t - 1] != '.')
       continue;
     } else if (strcmp(usbuf, name))
      continue;
     if (inst == cinst++)
      goto foundhid;
    }
    break;
   case 130:
    snprintf(coll + strlen(coll),
        sizeof coll - strlen(coll), ".%s:%s",
        hid_usage_page(HID_PAGE(h.usage)),
        hid_usage_in_page(h.usage));
    break;
   case 129:
    if (coll[0])
     *strrchr(coll, '.') = 0;
    break;
   default:
    break;
   }
  }
  if (ignore) {
   if (verbose)
    warnx("ignore item '%s'", name);
   continue;
  }
  if (isdemon) {
   syslog(LOG_WARNING, "config file `%s', line %d, HID "
          "item not found: `%s'\n", conf, line, name);
   freecommands(cmds);
   return (((void*)0));
  } else {
   errx(1, "config file `%s', line %d, HID item "
        "not found: `%s'\n", conf, line, name);
  }

 foundhid:
  hid_end_parse(d);
  cmd->lastseen = -1;
  cmd->lastused = -1;
  cmd->item = h;
  cmd->name = strdup(name);
  cmd->action = strdup(action);
  if (range) {
   if (cmd->value == 1)
    cmd->value = u - lo;
   else
    cmd->value = -1;
  }

  if (verbose)
   printf("PARSE:%d %s, %d, '%s'\n", cmd->line, name,
          cmd->value, cmd->action);
 }
 fclose(f);
 return (cmds);
}
