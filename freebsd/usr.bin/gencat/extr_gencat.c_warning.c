
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* curline ;
 int fprintf (int ,char*,...) ;
 char* getprogname () ;
 int lineno ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
warning(const char *cptr, const char *msg)
{
 fprintf(stderr, "%s: %s on line %ld\n", getprogname(), msg, lineno);
 fprintf(stderr, "%s\n", curline);
 if (cptr) {
  char *tptr;
  for (tptr = curline; tptr < cptr; ++tptr)
   putc(' ', stderr);
  fprintf(stderr, "^\n");
 }
}
