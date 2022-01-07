
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimerval {int it_value; int it_interval; } ;


 int ktrtimeval (int *) ;
 int printf (char*) ;

void
ktritimerval(struct itimerval *it)
{

 printf("itimerval { .interval = ");
 ktrtimeval(&it->it_interval);
 printf(", .value = ");
 ktrtimeval(&it->it_value);
 printf(" }\n");
}
