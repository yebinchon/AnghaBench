
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*,char const*) ;
 int * fopen (char const*,char const*) ;

__attribute__((used)) static FILE *
file(const char *name, const char *mode)
{
 FILE *fp;

 if ((fp = fopen(name, mode)) == ((void*)0))
  err(1, "%s", name);
 return(fp);
}
