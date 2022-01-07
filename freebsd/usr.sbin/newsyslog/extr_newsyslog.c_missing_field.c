
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char*) ;

__attribute__((used)) static char *
missing_field(char *p, char *errline)
{

 if (!p || !*p)
  errx(1, "missing field in config file:\n%s", errline);
 return (p);
}
