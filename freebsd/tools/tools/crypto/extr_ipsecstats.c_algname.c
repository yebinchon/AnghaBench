
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg {int a; char const* name; } ;
typedef int buf ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char*
algname(int a, const struct alg algs[], int nalgs)
{
 static char buf[80];
 int i;

 for (i = 0; i < nalgs; i++)
  if (algs[i].a == a)
   return algs[i].name;
 snprintf(buf, sizeof(buf), "alg#%u", a);
 return buf;
}
