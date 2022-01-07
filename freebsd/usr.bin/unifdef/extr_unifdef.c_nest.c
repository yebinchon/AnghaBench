
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXDEPTH ;
 int abort () ;
 int depth ;
 int error (char*) ;
 int linenum ;
 int * stifline ;

__attribute__((used)) static void
nest(void)
{
 if (depth > MAXDEPTH-1)
  abort();
 if (depth == MAXDEPTH-1)
  error("Too many levels of nesting");
 depth += 1;
 stifline[depth] = linenum;
}
