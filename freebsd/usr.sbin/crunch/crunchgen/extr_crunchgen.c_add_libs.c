
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_string (int *,char*) ;
 int curfilename ;
 scalar_t__ in_list (int *,char*) ;
 int libs ;
 int libs_so ;
 int linenum ;
 int warnx (char*,int ,int ,char*) ;

void
add_libs(int argc, char **argv)
{
 int i;

 for(i = 1; i < argc; i++) {
  add_string(&libs, argv[i]);
  if ( in_list(&libs_so, argv[i]) )
   warnx("%s:%d: "
    "library `%s' specified as dynamic earlier",
    curfilename, linenum, argv[i]);
 }
}
