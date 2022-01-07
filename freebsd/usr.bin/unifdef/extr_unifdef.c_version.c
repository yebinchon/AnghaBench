
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* copyright ;
 int exit (int ) ;
 int putc (char const,int ) ;
 int stderr ;

__attribute__((used)) static void
version(void)
{
 const char *c = copyright;
 for (;;) {
  while (*++c != '$')
   if (*c == '\0')
    exit(0);
  while (*++c != '$')
   putc(*c, stderr);
  putc('\n', stderr);
 }
}
