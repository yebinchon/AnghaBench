
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* get_line (int *,int *) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static char *
getchange(FILE *b)
{
 char *line;

 while ((line = get_line(b, ((void*)0)))) {
  if (isdigit((unsigned char)line[0]))
   return (line);
 }
 return (((void*)0));
}
