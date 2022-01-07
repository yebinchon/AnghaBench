
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char const*) ;

void
badconv(const char *ch)
{
 errx(1, "%%%s: bad conversion character", ch);
}
