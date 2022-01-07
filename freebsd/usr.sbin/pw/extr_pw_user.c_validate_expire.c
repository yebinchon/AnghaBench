
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_DATAERR ;
 int errx (int ,char*,char,char*) ;
 int numerics (char*) ;
 long strtol (char*,int *,int ) ;

__attribute__((used)) static long
validate_expire(char *str, int opt)
{
 if (!numerics(str))
  errx(EX_DATAERR, "-%c argument must be numeric "
       "when setting defaults: %s", (char)opt, str);
 return strtol(str, ((void*)0), 0);
}
