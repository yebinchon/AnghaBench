
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int
peek(FILE *f)
{
 int c;

 c = getc(f);
 if (c != EOF)
  ungetc(c, f);
 return c;
}
