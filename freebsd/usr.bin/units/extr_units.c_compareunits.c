
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unittype {int denominator; int numerator; } ;


 scalar_t__ compareproducts (int ,int ) ;

__attribute__((used)) static int
compareunits(struct unittype * first, struct unittype * second)
{
 return
 compareproducts(first->numerator, second->numerator) ||
 compareproducts(first->denominator, second->denominator);
}
