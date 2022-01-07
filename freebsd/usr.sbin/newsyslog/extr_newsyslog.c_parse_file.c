
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uid_t ;
typedef scalar_t__ u_long ;
struct passwd {void* pw_uid; } ;
struct ilist {int dummy; } ;
struct group {void* gr_gid; } ;
struct conf_entry {scalar_t__ permissions; scalar_t__ numlogs; int trsize; int flags; int hours; char* pid_cmd_file; int sig; int compress; int trim_at; void* gid; void* uid; } ;
struct cflist {int dummy; } ;
struct TYPE_4__ {size_t gl_matchc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef void* gid_t ;
typedef int FILE ;


 int BUFSIZ ;
 int CE_BINARY ;
 int CE_CREATE ;
 int CE_GLOB ;
 int CE_NODUMP ;
 int CE_NOSIGNAL ;
 int CE_PID2CMD ;
 int CE_PLAIN0 ;
 int CE_RFC5424 ;
 int CE_SIGNALGROUP ;
 int CE_TRIMAT ;
 int COMPRESS_BZIP2 ;
 int COMPRESS_GZIP ;
 int COMPRESS_NONE ;
 int COMPRESS_XZ ;
 int COMPRESS_ZSTD ;
 int DEBUG_MARKER ;
 int DEFAULT_MARKER ;
 int DEFFILEMODE ;
 int GLOB_NOCHECK ;
 int INCLUDE_MARKER ;
 scalar_t__ INT_MAX ;
 int PTM_PARSE_DWM ;
 int PTM_PARSE_ISO8601 ;
 int PTM_PARSE_MATCHDOM ;
 int SIGHUP ;
 int STAILQ_INSERT_TAIL (struct cflist*,struct conf_entry*,int ) ;
 int add_to_queue (char*,struct ilist*) ;
 void* atoi (char*) ;
 int cf_nextp ;
 int errx (int,char*,...) ;
 scalar_t__ fgets (char*,int,int *) ;
 int free (char*) ;
 int free_entry (struct conf_entry*) ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char*) ;
 int glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 struct conf_entry* init_entry (char*,int *) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isdigitch (char) ;
 scalar_t__ isglobstr (char*) ;
 int isnumberstr (char*) ;
 int isspacech (char) ;
 char* missing_field (char*,char*) ;
 scalar_t__ needroot ;
 int parse_doption (char*) ;
 int parse_signal (char*) ;
 char* path_syslogpid ;
 int printf (char*,char*) ;
 int ptime_init (int *) ;
 int ptime_relparse (int ,int,int ,char*) ;
 int ptimeget_secs (int ) ;
 char* sob (char*) ;
 char* son (char*) ;
 int sscanf (char*,char*,scalar_t__*) ;
 scalar_t__ strcasecmp (int ,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 void* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ strtoul (char*,char**,int) ;
 int sys_nsig ;
 int timenow ;
 int tolowerch (char) ;
 int verbose ;
 int warn (char*,int,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
parse_file(FILE *cf, struct cflist *work_p, struct cflist *glob_p,
    struct conf_entry **defconf_p, struct ilist *inclist)
{
 char line[BUFSIZ], *parse, *q;
 char *cp, *errline, *group;
 struct conf_entry *working;
 struct passwd *pwd;
 struct group *grp;
 glob_t pglob;
 int eol, ptm_opts, res, special;
 size_t i;

 errline = ((void*)0);
 while (fgets(line, BUFSIZ, cf)) {
  if ((line[0] == '\n') || (line[0] == '#') ||
      (strlen(line) == 0))
   continue;
  if (errline != ((void*)0))
   free(errline);
  errline = strdup(line);
  for (cp = line + 1; *cp != '\0'; cp++) {
   if (*cp != '#')
    continue;
   if (*(cp - 1) == '\\') {
    strcpy(cp - 1, cp);
    cp--;
    continue;
   }
   *cp = '\0';
   break;
  }

  q = parse = missing_field(sob(line), errline);
  parse = son(line);
  if (!*parse)
   errx(1, "malformed line (missing fields):\n%s",
       errline);
  *parse = '\0';






  if (strcasecmp(DEBUG_MARKER, q) == 0) {
   q = parse = missing_field(sob(parse + 1), errline);
   parse = son(parse);
   if (!*parse)
    warnx("debug line specifies no option:\n%s",
        errline);
   else {
    *parse = '\0';
    parse_doption(q);
   }
   continue;
  } else if (strcasecmp(INCLUDE_MARKER, q) == 0) {
   if (verbose)
    printf("Found: %s", errline);
   q = parse = missing_field(sob(parse + 1), errline);
   parse = son(parse);
   if (!*parse) {
    warnx("include line missing argument:\n%s",
        errline);
    continue;
   }

   *parse = '\0';

   if (isglobstr(q)) {
    res = glob(q, GLOB_NOCHECK, ((void*)0), &pglob);
    if (res != 0) {
     warn("cannot expand pattern (%d): %s",
         res, q);
     continue;
    }

    if (verbose > 2)
     printf("\t+ Expanding pattern %s\n", q);

    for (i = 0; i < pglob.gl_matchc; i++)
     add_to_queue(pglob.gl_pathv[i],
         inclist);
    globfree(&pglob);
   } else
    add_to_queue(q, inclist);
   continue;
  }

  special = 0;
  working = init_entry(q, ((void*)0));
  if (strcasecmp(DEFAULT_MARKER, q) == 0) {
   special = 1;
   if (*defconf_p != ((void*)0)) {
    warnx("Ignoring duplicate entry for %s!", q);
    free_entry(working);
    continue;
   }
   *defconf_p = working;
  }

  q = parse = missing_field(sob(parse + 1), errline);
  parse = son(parse);
  if (!*parse)
   errx(1, "malformed line (missing fields):\n%s",
       errline);
  *parse = '\0';
  if ((group = strchr(q, ':')) != ((void*)0) ||
      (group = strrchr(q, '.')) != ((void*)0)) {
   *group++ = '\0';
   if (*q) {
    if (!(isnumberstr(q))) {
     if ((pwd = getpwnam(q)) == ((void*)0))
      errx(1,
         "error in config file; unknown user:\n%s",
          errline);
     working->uid = pwd->pw_uid;
    } else
     working->uid = atoi(q);
   } else
    working->uid = (uid_t)-1;

   q = group;
   if (*q) {
    if (!(isnumberstr(q))) {
     if ((grp = getgrnam(q)) == ((void*)0))
      errx(1,
        "error in config file; unknown group:\n%s",
          errline);
     working->gid = grp->gr_gid;
    } else
     working->gid = atoi(q);
   } else
    working->gid = (gid_t)-1;

   q = parse = missing_field(sob(parse + 1), errline);
   parse = son(parse);
   if (!*parse)
    errx(1, "malformed line (missing fields):\n%s",
        errline);
   *parse = '\0';
  } else {
   working->uid = (uid_t)-1;
   working->gid = (gid_t)-1;
  }

  if (!sscanf(q, "%o", &working->permissions))
   errx(1, "error in config file; bad permissions:\n%s",
       errline);
  if ((working->permissions & ~DEFFILEMODE) != 0) {
   warnx("File mode bits 0%o changed to 0%o in line:\n%s",
       working->permissions,
       working->permissions & DEFFILEMODE, errline);
   working->permissions &= DEFFILEMODE;
  }

  q = parse = missing_field(sob(parse + 1), errline);
  parse = son(parse);
  if (!*parse)
   errx(1, "malformed line (missing fields):\n%s",
       errline);
  *parse = '\0';
  if (!sscanf(q, "%d", &working->numlogs) || working->numlogs < 0)
   errx(1, "error in config file; bad value for count of logs to save:\n%s",
       errline);

  q = parse = missing_field(sob(parse + 1), errline);
  parse = son(parse);
  if (!*parse)
   errx(1, "malformed line (missing fields):\n%s",
       errline);
  *parse = '\0';
  if (isdigitch(*q))
   working->trsize = atoi(q);
  else if (strcmp(q, "*") == 0)
   working->trsize = -1;
  else {
   warnx("Invalid value of '%s' for 'size' in line:\n%s",
       q, errline);
   working->trsize = -1;
  }

  working->flags = 0;
  working->compress = COMPRESS_NONE;
  q = parse = missing_field(sob(parse + 1), errline);
  parse = son(parse);
  eol = !*parse;
  *parse = '\0';
  {
   char *ep;
   u_long ul;

   ul = strtoul(q, &ep, 10);
   if (ep == q)
    working->hours = 0;
   else if (*ep == '*')
    working->hours = -1;
   else if (ul > INT_MAX)
    errx(1, "interval is too large:\n%s", errline);
   else
    working->hours = ul;

   if (*ep == '\0' || strcmp(ep, "*") == 0)
    goto no_trimat;
   if (*ep != '@' && *ep != '$')
    errx(1, "malformed interval/at:\n%s", errline);

   working->flags |= CE_TRIMAT;
   working->trim_at = ptime_init(((void*)0));
   ptm_opts = PTM_PARSE_ISO8601;
   if (*ep == '$')
    ptm_opts = PTM_PARSE_DWM;
   ptm_opts |= PTM_PARSE_MATCHDOM;
   res = ptime_relparse(working->trim_at, ptm_opts,
       ptimeget_secs(timenow), ep + 1);
   if (res == -2)
    errx(1, "nonexistent time for 'at' value:\n%s",
        errline);
   else if (res < 0)
    errx(1, "malformed 'at' value:\n%s", errline);
  }
no_trimat:

  if (eol)
   q = ((void*)0);
  else {
   q = parse = sob(parse + 1);
   parse = son(parse);
   if (!*parse)
    eol = 1;
   *parse = '\0';
  }

  for (; q && *q && !isspacech(*q); q++) {
   switch (tolowerch(*q)) {
   case 'b':
    working->flags |= CE_BINARY;
    break;
   case 'c':
    working->flags |= CE_CREATE;
    break;
   case 'd':
    working->flags |= CE_NODUMP;
    break;
   case 'g':
    working->flags |= CE_GLOB;
    break;
   case 'j':
    working->compress = COMPRESS_BZIP2;
    break;
   case 'n':
    working->flags |= CE_NOSIGNAL;
    break;
   case 'p':
    working->flags |= CE_PLAIN0;
    break;
   case 'r':
    working->flags |= CE_PID2CMD;
    break;
   case 't':
    working->flags |= CE_RFC5424;
    break;
   case 'u':
    working->flags |= CE_SIGNALGROUP;
    break;
   case 'w':

    break;
   case 'x':
    working->compress = COMPRESS_XZ;
    break;
   case 'y':
    working->compress = COMPRESS_ZSTD;
    break;
   case 'z':
    working->compress = COMPRESS_GZIP;
    break;
   case '-':
    break;
   case 'f':
   case 'm':
   default:
    errx(1, "illegal flag in config file -- %c",
        *q);
   }
  }

  if (eol)
   q = ((void*)0);
  else {
   q = parse = sob(parse + 1);
   parse = son(parse);
   if (!*parse)
    eol = 1;
   *parse = '\0';
  }

  working->pid_cmd_file = ((void*)0);
  if (q && *q) {
   if (*q == '/')
    working->pid_cmd_file = strdup(q);
   else if (isalnum(*q))
    goto got_sig;
   else {
    errx(1,
   "illegal pid file or signal in config file:\n%s",
        errline);
   }
  }
  if (eol)
   q = ((void*)0);
  else {
   q = parse = sob(parse + 1);
   parse = son(parse);
   *parse = '\0';
  }

  working->sig = SIGHUP;
  if (q && *q) {
got_sig:
   working->sig = parse_signal(q);
   if (working->sig < 1 || working->sig >= sys_nsig) {
    errx(1,
        "illegal signal in config file:\n%s",
        errline);
   }
  }





  if ((working->flags & CE_NOSIGNAL) == CE_NOSIGNAL) {





   if (working->pid_cmd_file != ((void*)0)) {
    warnx("Ignoring '%s' because flag 'n' was specified in line:\n%s",
        working->pid_cmd_file, errline);
    free(working->pid_cmd_file);
    working->pid_cmd_file = ((void*)0);
   }
  } else if (working->pid_cmd_file == ((void*)0)) {
   if (working->flags & CE_SIGNALGROUP) {
    warnx("Ignoring flag 'U' in line:\n%s",
        errline);
    working->flags &= ~CE_SIGNALGROUP;
   }
   if (needroot)
    working->pid_cmd_file = strdup(path_syslogpid);
  }





  if (special) {
   ;
  } else if (working->flags & CE_GLOB) {
   STAILQ_INSERT_TAIL(glob_p, working, cf_nextp);
  } else {
   STAILQ_INSERT_TAIL(work_p, working, cf_nextp);
  }
 }
 if (errline != ((void*)0))
  free(errline);
}
