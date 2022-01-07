
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int putcharwrap (int *,int ) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void
printwrap(FILE *f, const char *p)
{
 char *q;
 char buf[12];

 q = buf;
 strlcpy(buf, p, sizeof(buf));
 while (*q)
  putcharwrap(f, *q++);
}
