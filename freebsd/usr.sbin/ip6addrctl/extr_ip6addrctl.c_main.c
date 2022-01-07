
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int add_policy (char*,char*,char*) ;
 char* configfile ;
 int delete_policy (char*) ;
 int dump_policy () ;
 int exit (int ) ;
 int flush_policy () ;
 int get_policy () ;
 int make_policy_fromfile (char*) ;
 int policyhead ;
 int set_policy () ;
 scalar_t__ strcasecmp (char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 TAILQ_INIT(&policyhead);

 if (argc == 1 || strcasecmp(argv[1], "show") == 0) {
  get_policy();
  dump_policy();
 } else if (strcasecmp(argv[1], "add") == 0) {
  if (argc < 5)
   usage();
  add_policy(argv[2], argv[3], argv[4]);
 } else if (strcasecmp(argv[1], "delete") == 0) {
  if (argc < 3)
   usage();
  delete_policy(argv[2]);
 } else if (strcasecmp(argv[1], "flush") == 0) {
  get_policy();
  flush_policy();
 } else if (strcasecmp(argv[1], "install") == 0) {
  if (argc < 3)
   usage();
  configfile = argv[2];
  make_policy_fromfile(configfile);
  set_policy();
 } else
  usage();

 exit(0);
}
