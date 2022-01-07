
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* spool_dir; } ;


 int errx (int,char*) ;
 int local_host ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,char*,char const*,int,int ) ;

__attribute__((used)) static char *
lmktemp(const struct printer *pp, const char *id, int num, int len)
{
 register char *s;

 if ((s = malloc(len)) == ((void*)0))
  errx(1, "out of memory");
 (void) snprintf(s, len, "%s/%sA%03d%s", pp->spool_dir, id, num,
     local_host);
 return(s);
}
