
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_rule (int,char**) ;
 int list_rules () ;
 int remove_rule (int,char**) ;
 int set_rule (int,char**) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{

 if (argc < 2)
  usage();

 if (strcmp("add", argv[1]) == 0) {
  add_rule(argc-2, argv+2);
 } else if (strcmp("list", argv[1]) == 0) {
  if (argc != 2)
   usage();
  list_rules();
 } else if (strcmp("set", argv[1]) == 0) {
  set_rule(argc-2, argv+2);
 } else if (strcmp("remove", argv[1]) == 0) {
  remove_rule(argc-2, argv+2);
 } else
  usage();

 return (0);
}
