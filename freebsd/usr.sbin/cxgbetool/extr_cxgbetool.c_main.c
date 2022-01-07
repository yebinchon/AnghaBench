
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char chip_id ;
 int exit (int ) ;
 char const* nexus ;
 char const* progname ;
 int run_cmd (int,char const**) ;
 int run_cmd_loop () ;
 int stderr ;
 int stdout ;
 int strcmp (char const*,char*) ;
 int usage (int ) ;

int
main(int argc, const char *argv[])
{
 int rc = -1;

 progname = argv[0];

 if (argc == 2) {
  if (!strcmp(argv[1], "-h") || !strcmp(argv[1], "--help")) {
   usage(stdout);
   exit(0);
  }
 }

 if (argc < 3) {
  usage(stderr);
  exit(EINVAL);
 }

 nexus = argv[1];
 chip_id = nexus[1] - '0';


 argc -= 2;
 argv += 2;

 if (argc == 1 && !strcmp(argv[0], "stdio"))
  rc = run_cmd_loop();
 else
  rc = run_cmd(argc, argv);

 return (rc);
}
