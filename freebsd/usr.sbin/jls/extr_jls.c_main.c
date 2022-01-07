
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lastjid ;
typedef int jid ;
struct TYPE_2__ {int jp_flags; char* jp_name; } ;


 scalar_t__ ENOENT ;
 int JAIL_DYING ;
 int JLS_XO_VERSION ;
 int JP_OPT ;
 int JP_USER ;
 int PRINT_DEFAULT ;
 int PRINT_HEADER ;
 int PRINT_JAIL_NAME ;
 int PRINT_NAMEVAL ;
 int PRINT_QUOTED ;
 int PRINT_SKIP ;
 int PRINT_VERBOSE ;
 int add_param (char*,...) ;
 char* alloca (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 void* feature_present (char*) ;
 int getopt (int,char**,char*) ;
 void* ip4_ok ;
 void* ip6_ok ;
 int jail_errmsg ;
 int nparams ;
 char* optarg ;
 int optind ;
 int * param_parent ;
 TYPE_1__* params ;
 int print_jail (int,int) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int strtoul (char*,char**,int) ;
 int xo_close_container (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_errx (int,char*,...) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_list (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_set_version (int ) ;

int
main(int argc, char **argv)
{
 char *dot, *ep, *jname, *pname;
 int c, i, jflags, jid, lastjid, pflags, spc;

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  exit(1);

        xo_set_version(JLS_XO_VERSION);
 jname = ((void*)0);
 pflags = jflags = jid = 0;
 while ((c = getopt(argc, argv, "adj:hNnqsv")) >= 0)
  switch (c) {
  case 'a':
  case 'd':
   jflags |= JAIL_DYING;
   break;
  case 'j':
   jid = strtoul(optarg, &ep, 10);
   if (!jid || *ep) {
    jid = 0;
    jname = optarg;
   }
   break;
  case 'h':
   pflags = (pflags & ~(PRINT_SKIP | PRINT_VERBOSE)) |
       PRINT_HEADER;
   break;
  case 'N':
   pflags |= PRINT_JAIL_NAME;
   break;
  case 'n':
   pflags = (pflags & ~PRINT_VERBOSE) | PRINT_NAMEVAL;
   break;
  case 'q':
   pflags |= PRINT_QUOTED;
   break;
  case 's':
   pflags = (pflags & ~(PRINT_HEADER | PRINT_VERBOSE)) |
       PRINT_NAMEVAL | PRINT_QUOTED | PRINT_SKIP;
   break;
  case 'v':
   pflags = (pflags &
       ~(PRINT_HEADER | PRINT_NAMEVAL | PRINT_SKIP)) |
       PRINT_VERBOSE;
   break;
  default:
   xo_errx(1, "usage: jls [-dhNnqv] [-j jail] [param ...]");
  }
 if (optind == argc) {
  if (pflags & (PRINT_HEADER | PRINT_NAMEVAL))
   add_param("all", ((void*)0), (size_t)0, ((void*)0), JP_USER);
  else if (pflags & PRINT_VERBOSE) {
   add_param("jid", ((void*)0), (size_t)0, ((void*)0), JP_USER);
   add_param("host.hostname", ((void*)0), (size_t)0, ((void*)0),
       JP_USER);
   add_param("path", ((void*)0), (size_t)0, ((void*)0), JP_USER);
   add_param("name", ((void*)0), (size_t)0, ((void*)0), JP_USER);
   add_param("dying", ((void*)0), (size_t)0, ((void*)0), JP_USER);
   add_param("cpuset.id", ((void*)0), (size_t)0, ((void*)0), JP_USER);
  } else {
   pflags |= PRINT_DEFAULT;
   if (pflags & PRINT_JAIL_NAME)
    add_param("name", ((void*)0), (size_t)0, ((void*)0), JP_USER);
   else
    add_param("jid", ((void*)0), (size_t)0, ((void*)0), JP_USER);





   add_param("host.hostname", ((void*)0), (size_t)0, ((void*)0),
       JP_USER);
   add_param("path", ((void*)0), (size_t)0, ((void*)0), JP_USER);
  }
 } else {
  pflags &= ~PRINT_VERBOSE;
  while (optind < argc)
   add_param(argv[optind++], ((void*)0), (size_t)0, ((void*)0),
       JP_USER);
 }

 if (pflags & PRINT_SKIP) {

  for (i = 0; i < nparams; i++) {
   if ((params[i].jp_flags & JP_USER) &&
       (dot = strchr(params[i].jp_name, '.'))) {
    pname = alloca((dot - params[i].jp_name) + 1);
    strlcpy(pname, params[i].jp_name,
        (dot - params[i].jp_name) + 1);
    param_parent[i] = add_param(pname,
        ((void*)0), (size_t)0, ((void*)0), JP_OPT);
   }
  }
 }


 if (jid != 0)
  add_param("jid", &jid, sizeof(jid), ((void*)0), 0);
 else if (jname != ((void*)0))
  add_param("name", jname, strlen(jname), ((void*)0), 0);
 else
  add_param("lastjid", &lastjid, sizeof(lastjid), ((void*)0), 0);


 if (pflags & PRINT_VERBOSE) {
  xo_emit("{T:/%3s}{T:JID}{P:  }{T:Hostname}{Pd:/%22s}{T:Path}\n",
          "", "");
  xo_emit("{P:/%8s}{T:Name}{Pd:/%26s}{T:State}\n", "", "");
  xo_emit("{P:/%8s}{T:CPUSetID}\n", "");
  xo_emit("{P:/%8s}{T:IP Address(es)}\n", "");
 }
 else if (pflags & PRINT_DEFAULT)
  if (pflags & PRINT_JAIL_NAME)
   xo_emit("{P: }{T:JID/%-15s}{P: }{T:IP Address/%-15s}"
           "{P: }{T:Hostname/%-29s}{P: }{T:Path}\n");
  else
   xo_emit("{T:JID/%6s}{P:  }{T:IP Address}{P:/%6s}"
           "{T:Hostname}{P:/%22s}{T:Path}\n", "", "");
 else if (pflags & PRINT_HEADER) {
  for (i = spc = 0; i < nparams; i++)
   if (params[i].jp_flags & JP_USER) {
    if (spc)
     xo_emit("{P: }");
    else
     spc = 1;
    xo_emit(params[i].jp_name);
   }
  xo_emit("{P:\n}");
 }

 xo_open_container("jail-information");
 xo_open_list("jail");

 if (jid != 0 || jname != ((void*)0)) {
  if (print_jail(pflags, jflags) < 0)
   xo_errx(1, "%s", jail_errmsg);
 } else {
  for (lastjid = 0;
       (lastjid = print_jail(pflags, jflags)) >= 0; )
   ;
  if (errno != 0 && errno != ENOENT)
   xo_errx(1, "%s", jail_errmsg);
 }
 xo_close_list("jail");
 xo_close_container("jail-information");
 xo_finish();
 return (0);
}
