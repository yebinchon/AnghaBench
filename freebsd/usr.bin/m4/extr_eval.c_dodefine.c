
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m4errx (int,char*) ;
 int macro_define (char const*,char const*) ;
 int mimic_gnu ;

void
dodefine(const char *name, const char *defn)
{
 if (!*name && !mimic_gnu)
  m4errx(1, "null definition.");
 else
  macro_define(name, defn);
}
