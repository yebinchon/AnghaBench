
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argcount ;
 int * arglist ;
 int argmax ;
 int moreargs () ;
 int xstrdup (char const*) ;

__attribute__((used)) static void
insarg(int place, const char *cp)
{
 int i;

 if (argcount >= argmax)
  moreargs();


 for (i = argcount - 1; i >= place; i--)
  arglist[i + 1] = arglist[i];

 arglist[place] = xstrdup(cp);
 argcount++;
}
