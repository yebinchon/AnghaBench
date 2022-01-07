
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int (* exec ) (int,char**) ;int name; } ;


 struct command* cmds ;
 int exit (int) ;
 int getopt_long (int,char**,char*,int *,int *) ;
 int nbcmds ;
 char* optarg ;
 scalar_t__ optind ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;
 int stub1 (int,char**) ;
 char* uflag ;
 int usage (int ,int *) ;
 int warnx (char*,...) ;
 int xo_parse_args (int,char**) ;

int
main(int argc, char **argv)
{
 int i, ch;
 struct command *cmd = ((void*)0);

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  exit(1);

 uflag = "/dev/ses[0-9]*";
 while ((ch = getopt_long(argc, argv, "u:", ((void*)0), ((void*)0))) != -1) {
  switch (ch) {
  case 'u':
   uflag = optarg;
   break;
  case '?':
  default:
   usage(stderr, ((void*)0));
  }
 }
 argc -= optind;
 argv += optind;

 if (argc < 1) {
  warnx("Missing command");
  usage(stderr, ((void*)0));
 }

 for (i = 0; i < nbcmds; i++) {
  if (strcmp(argv[0], cmds[i].name) == 0) {
   cmd = &cmds[i];
   break;
  }
 }

 if (cmd == ((void*)0)) {
  warnx("unknown command %s", argv[0]);
  usage(stderr, ((void*)0));
 }

 return (cmd->exec(argc, argv));
}
