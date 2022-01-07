
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lin ;
typedef int FILE ;


 int atoi (char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;

__attribute__((used)) static int
read_number(const char *fn)
{
 char lin[80];
 register FILE *fp;

 if ((fp = fopen(fn, "r")) == ((void*)0))
  return (0);
 if (fgets(lin, sizeof(lin), fp) == ((void*)0)) {
  fclose(fp);
  return (0);
 }
 fclose(fp);
 return (atoi(lin));
}
