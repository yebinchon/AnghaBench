
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {double factor; double offset; scalar_t__ quantity; int ** denominator; int * numerator; } ;



__attribute__((used)) static void
initializeunit(struct unittype * theunit)
{
 theunit->numerator[0] = theunit->denominator[0] = ((void*)0);
 theunit->factor = 1.0;
 theunit->offset = 0.0;
 theunit->quantity = 0;
}
