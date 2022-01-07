
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ defundef () ;
 int err (int,char*,char const*) ;
 int error (char*) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 char const* filename ;
 int * fopen (char const*,char*) ;
 scalar_t__ incomment ;
 int * input ;
 scalar_t__ linenum ;

__attribute__((used)) static void
defundefile(const char *fn)
{
 filename = fn;
 input = fopen(fn, "rb");
 if (input == ((void*)0))
  err(2, "can't open %s", fn);
 linenum = 0;
 while (defundef())
  ;
 if (ferror(input))
  err(2, "can't read %s", filename);
 else
  fclose(input);
 if (incomment)
  error("EOF in comment");
}
