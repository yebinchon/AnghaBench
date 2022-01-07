
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modes {int * m_name; int m_mode; } ;


 char* mode ;
 struct modes* modes ;
 int printf (char*,...) ;
 int settftpmode (int ) ;
 scalar_t__ strcmp (char*,int *) ;

__attribute__((used)) static void
modecmd(int argc, char *argv[])
{
 struct modes *p;
 const char *sep;

 if (argc < 2) {
  printf("Using %s mode to transfer files.\n", mode);
  return;
 }
 if (argc == 2) {
  for (p = modes; p->m_name; p++)
   if (strcmp(argv[1], p->m_name) == 0)
    break;
  if (p->m_name) {
   settftpmode(p->m_mode);
   return;
  }
  printf("%s: unknown mode\n", argv[1]);

 }

 printf("usage: %s [", argv[0]);
 sep = " ";
 for (p = modes; p->m_name != ((void*)0); p++) {
  printf("%s%s", sep, p->m_name);
  if (*sep == ' ')
   sep = " | ";
 }
 printf(" ]\n");
 return;
}
