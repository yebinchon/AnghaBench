
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_string (int *,char*) ;
 int curfilename ;
 int goterror ;
 scalar_t__ is_dir (char*) ;
 int linenum ;
 int srcdirs ;
 int warnx (char*,int ,int ,char*) ;

void
add_srcdirs(int argc, char **argv)
{
 int i;

 for (i = 1; i < argc; i++) {
  if (is_dir(argv[i]))
   add_string(&srcdirs, argv[i]);
  else {
   warnx("%s:%d: `%s' is not a directory, skipping it",
       curfilename, linenum, argv[i]);
   goterror = 1;
  }
 }
}
