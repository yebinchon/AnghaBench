
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int lastchar ;
 int putc (int,int *) ;

__attribute__((used)) static void
flushwrap(FILE *f)
{

 if (lastchar != -1)
  putc(lastchar, f);
}
