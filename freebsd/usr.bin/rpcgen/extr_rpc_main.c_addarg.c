
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ argcount ;
 int ** arglist ;
 scalar_t__ argmax ;
 int moreargs () ;
 int * xstrdup (char const*) ;

__attribute__((used)) static void
addarg(const char *cp)
{
 if (argcount >= argmax)
  moreargs();

 if (cp != ((void*)0))
  arglist[argcount++] = xstrdup(cp);
 else
  arglist[argcount++] = ((void*)0);
}
