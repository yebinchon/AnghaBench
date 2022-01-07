
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {double offset; char** numerator; char** denominator; int factor; } ;


 char* numfmt ;
 char* powerstring ;
 int printf (char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
showunit(struct unittype * theunit)
{
 char **ptr;
 int printedslash;
 int counter = 1;

 printf(numfmt, theunit->factor);
 if (theunit->offset)
  printf("&%.8g", theunit->offset);
 for (ptr = theunit->numerator; *ptr; ptr++) {
  if (ptr > theunit->numerator && **ptr &&
      !strcmp(*ptr, *(ptr - 1)))
   counter++;
  else {
   if (counter > 1)
    printf("%s%d", powerstring, counter);
   if (**ptr)
    printf(" %s", *ptr);
   counter = 1;
  }
 }
 if (counter > 1)
  printf("%s%d", powerstring, counter);
 counter = 1;
 printedslash = 0;
 for (ptr = theunit->denominator; *ptr; ptr++) {
  if (ptr > theunit->denominator && **ptr &&
      !strcmp(*ptr, *(ptr - 1)))
   counter++;
  else {
   if (counter > 1)
    printf("%s%d", powerstring, counter);
   if (**ptr) {
    if (!printedslash)
     printf(" /");
    printedslash = 1;
    printf(" %s", *ptr);
   }
   counter = 1;
  }
 }
 if (counter > 1)
  printf("%s%d", powerstring, counter);
 printf("\n");
}
