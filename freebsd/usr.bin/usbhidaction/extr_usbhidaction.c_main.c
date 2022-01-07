
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {char report_ID; int flags; int report_count; int pos; scalar_t__ report_size; } ;
struct command {int value; scalar_t__ anyvalue; int debounce; int lastseen; int lastused; TYPE_1__ item; struct command* next; } ;
typedef int * report_desc_t ;
typedef int devnamebuf ;
typedef int buf ;


 int HIO_VARIABLE ;
 int O_CREAT ;
 int O_RDWR ;
 int O_WRONLY ;
 int PATH_MAX ;
 int SIGHUP ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int abs (int) ;
 int atoi (void*) ;
 int close (int) ;
 struct command* commands ;
 scalar_t__ daemon (int ,int ) ;
 int docmd (struct command*,int,char const*,int,char**) ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int exit (int) ;
 int freecommands (struct command*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getpid () ;
 int hid_get_data (char*,TYPE_1__*) ;
 int * hid_get_report_desc (int) ;
 int hid_init (char const*) ;
 int hid_input ;
 scalar_t__ hid_report_size (int *,int ,int) ;
 int isdemon ;
 scalar_t__ isdigit (char const) ;
 int open (char const*,int,...) ;
 void* optarg ;
 scalar_t__ optind ;
 void* parse_conf (char const*,int *,int,int) ;
 void* pidfile ;
 int printf (char*,...) ;
 int read (int,char*,size_t) ;
 scalar_t__ reparse ;
 int sighup ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,...) ;
 size_t strlen (char*) ;
 int usage () ;
 int verbose ;
 scalar_t__ write (int,char*,size_t) ;

int
main(int argc, char **argv)
{
 const char *conf = ((void*)0);
 const char *dev = ((void*)0);
 const char *table = ((void*)0);
 int fd, fp, ch, n, val, i;
 size_t sz, sz1;
 int demon, ignore, dieearly;
 report_desc_t repd;
 char buf[100];
 char devnamebuf[PATH_MAX];
 struct command *cmd;
 int reportid = -1;

 demon = 1;
 ignore = 0;
 dieearly = 0;
 while ((ch = getopt(argc, argv, "c:def:ip:r:t:v")) != -1) {
  switch(ch) {
  case 'c':
   conf = optarg;
   break;
  case 'd':
   demon ^= 1;
   break;
  case 'e':
   dieearly = 1;
   break;
  case 'i':
   ignore++;
   break;
  case 'f':
   dev = optarg;
   break;
  case 'p':
   pidfile = optarg;
   break;
  case 'r':
   reportid = atoi(optarg);
   break;
  case 't':
   table = optarg;
   break;
  case 'v':
   demon = 0;
   verbose++;
   break;
  case '?':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (conf == ((void*)0) || dev == ((void*)0))
  usage();

 hid_init(table);

 if (dev[0] != '/') {
  snprintf(devnamebuf, sizeof(devnamebuf), "/dev/%s%s",
    isdigit(dev[0]) ? "uhid" : "", dev);
  dev = devnamebuf;
 }

 fd = open(dev, O_RDWR);
 if (fd < 0)
  err(1, "%s", dev);
 repd = hid_get_report_desc(fd);
 if (repd == ((void*)0))
  err(1, "hid_get_report_desc() failed");

 commands = parse_conf(conf, repd, reportid, ignore);

 sz = (size_t)hid_report_size(repd, hid_input, -1);

 if (verbose)
  printf("report size %zu\n", sz);
 if (sz > sizeof buf)
  errx(1, "report too large");

 (void)signal(SIGHUP, sighup);

 if (demon) {
  fp = open(pidfile, O_WRONLY|O_CREAT, S_IRUSR|S_IRGRP|S_IROTH);
  if (fp < 0)
   err(1, "%s", pidfile);
  if (daemon(0, 0) < 0)
   err(1, "daemon()");
  snprintf(buf, sizeof(buf), "%ld\n", (long)getpid());
  sz1 = strlen(buf);
  if (write(fp, buf, sz1) < 0)
   err(1, "%s", pidfile);
  close(fp);
  isdemon = 1;
 }

 for(;;) {
  n = read(fd, buf, sz);
  if (verbose > 2) {
   printf("read %d bytes:", n);
   for (i = 0; i < n; i++)
    printf(" %02x", buf[i]);
   printf("\n");
  }
  if (n < 0) {
   if (verbose)
    err(1, "read");
   else
    exit(1);
  }





  for (cmd = commands; cmd; cmd = cmd->next) {
   if (cmd->item.report_ID != 0 &&
       buf[0] != cmd->item.report_ID)
    continue;
   if (cmd->item.flags & HIO_VARIABLE)
    val = hid_get_data(buf, &cmd->item);
   else {
    uint32_t pos = cmd->item.pos;
    for (i = 0; i < cmd->item.report_count; i++) {
     val = hid_get_data(buf, &cmd->item);
     if (val == cmd->value)
      break;
     cmd->item.pos += cmd->item.report_size;
    }
    cmd->item.pos = pos;
    val = (i < cmd->item.report_count) ?
        cmd->value : -1;
   }
   if (cmd->value != val && cmd->anyvalue == 0)
    goto next;
   if ((cmd->debounce == 0) ||
       ((cmd->debounce == 1) && ((cmd->lastseen == -1) ||
            (cmd->lastseen != val)))) {
    docmd(cmd, val, dev, argc, argv);
    goto next;
   }
   if ((cmd->debounce > 1) &&
       ((cmd->lastused == -1) ||
        (abs(cmd->lastused - val) >= cmd->debounce))) {
    docmd(cmd, val, dev, argc, argv);
    cmd->lastused = val;
    goto next;
   }
next:
   cmd->lastseen = val;
  }

  if (dieearly)
   exit(0);

  if (reparse) {
   struct command *cmds =
       parse_conf(conf, repd, reportid, ignore);
   if (cmds) {
    freecommands(commands);
    commands = cmds;
   }
   reparse = 0;
  }
 }

 exit(0);
}
