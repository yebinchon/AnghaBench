
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closeio () ;
 int fprintf (int ,char*,int,char*,...) ;
 char* linefile ;
 int linenum ;
 char* newline ;
 int output ;

__attribute__((used)) static void
hashline(void)
{
 int e;

 if (linefile == ((void*)0))
  e = fprintf(output, "#line %d%s", linenum, newline);
 else
  e = fprintf(output, "#line %d \"%s\"%s",
      linenum, linefile, newline);
 if (e < 0)
  closeio();
}
