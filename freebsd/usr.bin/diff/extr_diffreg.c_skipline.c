
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;

__attribute__((used)) static int
skipline(FILE *f)
{
 int i, c;

 for (i = 1; (c = getc(f)) != '\n' && c != EOF; i++)
  continue;
 return (i);
}
