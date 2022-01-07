
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * libs; int * buildopts; int * objvar; int * keeplist; int * objpaths; int * objs; int * objdir; int * srcdir; int * ident; } ;
typedef TYPE_1__ prog_t ;


 int add_string (int **,char*) ;
 int curfilename ;
 TYPE_1__* find_prog (char*) ;
 int goterror ;
 int linenum ;
 int out_of_memory () ;
 scalar_t__ reading_cache ;
 int strcmp (char*,char*) ;
 void* strdup (char*) ;
 int warnx (char*,int ,int ,char*,...) ;

void
add_special(int argc, char **argv)
{
 int i;
 prog_t *p = find_prog(argv[1]);

 if (p == ((void*)0)) {
  if (reading_cache)
   return;

  warnx("%s:%d: no prog %s previously declared, skipping special",
      curfilename, linenum, argv[1]);
  goterror = 1;
  return;
 }

 if (!strcmp(argv[2], "ident")) {
  if (argc != 4)
   goto argcount;
  if ((p->ident = strdup(argv[3])) == ((void*)0))
   out_of_memory();
 } else if (!strcmp(argv[2], "srcdir")) {
  if (argc != 4)
   goto argcount;
  if ((p->srcdir = strdup(argv[3])) == ((void*)0))
   out_of_memory();
 } else if (!strcmp(argv[2], "objdir")) {
  if(argc != 4)
   goto argcount;
  if((p->objdir = strdup(argv[3])) == ((void*)0))
   out_of_memory();
 } else if (!strcmp(argv[2], "objs")) {
  p->objs = ((void*)0);
  for (i = 3; i < argc; i++)
   add_string(&p->objs, argv[i]);
 } else if (!strcmp(argv[2], "objpaths")) {
  p->objpaths = ((void*)0);
  for (i = 3; i < argc; i++)
   add_string(&p->objpaths, argv[i]);
 } else if (!strcmp(argv[2], "keep")) {
  p->keeplist = ((void*)0);
  for(i = 3; i < argc; i++)
   add_string(&p->keeplist, argv[i]);
 } else if (!strcmp(argv[2], "objvar")) {
  if(argc != 4)
   goto argcount;
  if ((p->objvar = strdup(argv[3])) == ((void*)0))
   out_of_memory();
 } else if (!strcmp(argv[2], "buildopts")) {
  p->buildopts = ((void*)0);
  for (i = 3; i < argc; i++)
   add_string(&p->buildopts, argv[i]);
 } else if (!strcmp(argv[2], "lib")) {
  for (i = 3; i < argc; i++)
   add_string(&p->libs, argv[i]);
 } else {
  warnx("%s:%d: bad parameter name `%s', skipping line",
      curfilename, linenum, argv[2]);
  goterror = 1;
 }
 return;

 argcount:
 warnx("%s:%d: too %s arguments, expected \"special %s %s <string>\"",
     curfilename, linenum, argc < 4? "few" : "many", argv[1], argv[2]);
 goterror = 1;
}
