
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {char** denominator; char** numerator; } ;


 int ERROR ;
 char* NULLUNIT ;
 int PRIMITIVECHAR ;
 scalar_t__ addunit (struct unittype*,char*,int,int ) ;
 int free (char*) ;
 char* lookupunit (char*) ;
 int printf (char*,char*) ;
 scalar_t__ strchr (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int
reduceproduct(struct unittype * theunit, int flip)
{

 char *toadd;
 char **product;
 int didsomething = 2;

 if (flip)
  product = theunit->denominator;
 else
  product = theunit->numerator;

 for (; *product; product++) {

  for (;;) {
   if (!strlen(*product))
    break;
   toadd = lookupunit(*product);
   if (!toadd) {
    printf("unknown unit '%s'\n", *product);
    return ERROR;
   }
   if (strchr(toadd, PRIMITIVECHAR))
    break;
   didsomething = 1;
   if (*product != NULLUNIT) {
    free(*product);
    *product = NULLUNIT;
   }
   if (addunit(theunit, toadd, flip, 0))
    return ERROR;
  }
 }
 return didsomething;
}
