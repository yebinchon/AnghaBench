
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {char** numerator; char** denominator; } ;


 int compare ;
 int qsort (char**,unsigned int,int,int ) ;

__attribute__((used)) static void
sortunit(struct unittype * theunit)
{
 char **ptr;
 unsigned int count;

 for (count = 0, ptr = theunit->numerator; *ptr; ptr++, count++);
 qsort(theunit->numerator, count, sizeof(char *), compare);
 for (count = 0, ptr = theunit->denominator; *ptr; ptr++, count++);
 qsort(theunit->denominator, count, sizeof(char *), compare);
}
