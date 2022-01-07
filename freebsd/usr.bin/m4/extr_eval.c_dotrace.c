
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mark_traced (char const*,int) ;

__attribute__((used)) static void
dotrace(const char *argv[], int argc, int on)
{
 int n;

 if (argc > 2) {
  for (n = 2; n < argc; n++)
   mark_traced(argv[n], on);
 } else
  mark_traced(((void*)0), on);
}
