
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* catname; int catid; } ;


 int _LC_LAST ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 TYPE_1__* locales ;
 int printf (char*,char*,char const*) ;
 int * setlocale (int ,char const*) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 int i, result;
 const char *localename;

 if (argc != 2) {
  (void)fprintf(stderr, "usage: localeck <locale_name>\n");
  exit(1);
 }

 localename = argv[1];
 result = 0;

 for (i = 0; i < _LC_LAST; i++) {
  if (setlocale(locales[i].catid, localename) == ((void*)0)) {
   printf("setlocale(%s, %s) failed\n", locales[i].catname,
       localename);
   result++;
  }
 }
 return (result);
}
