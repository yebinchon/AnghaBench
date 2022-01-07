
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct number {scalar_t__ scale; int number; } ;


 int scale_number (int ,scalar_t__) ;

void
normalize(struct number *n, u_int s)
{

 scale_number(n->number, s - n->scale);
 n->scale = s;
}
