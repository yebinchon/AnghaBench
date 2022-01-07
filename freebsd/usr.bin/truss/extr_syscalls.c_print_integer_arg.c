
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int fputs (char const*,int *) ;

__attribute__((used)) static void
print_integer_arg(const char *(*decoder)(int), FILE *fp, int value)
{
 const char *str;

 str = decoder(value);
 if (str != ((void*)0))
  fputs(str, fp);
 else
  fprintf(fp, "%d", value);
}
