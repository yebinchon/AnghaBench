
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACRTYPE ;
 int RECDEF ;
 size_t SIZE_MAX ;
 int expand_builtin (char const**,int,int) ;
 int expand_macro (char const**,int) ;
 int expansion_id ;
 int finish_trace (size_t) ;
 scalar_t__ ilevel ;
 scalar_t__ infile ;
 int m4errx (int,char*,char const*) ;
 size_t trace (char const**,int,scalar_t__) ;

void
eval(const char *argv[], int argc, int td, int is_traced)
{
 size_t mark = SIZE_MAX;

 expansion_id++;
 if (td & RECDEF)
  m4errx(1, "expanding recursive definition for %s.", argv[1]);
 if (is_traced)
  mark = trace(argv, argc, infile+ilevel);
 if (td == MACRTYPE)
  expand_macro(argv, argc);
 else
  expand_builtin(argv, argc, td);
 if (mark != SIZE_MAX)
  finish_trace(mark);
}
