
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {char** denominator; char** numerator; } ;


 void* NULLUNIT ;
 int strcmp (char*,char*) ;

void
cancelunit(struct unittype * theunit)
{
 char **den, **num;
 int comp;

 den = theunit->denominator;
 num = theunit->numerator;

 while (*num && *den) {
  comp = strcmp(*den, *num);
  if (!comp) {


   *den++ = NULLUNIT;
   *num++ = NULLUNIT;
  }
  else if (comp < 0)
   den++;
  else
   num++;
 }
}
