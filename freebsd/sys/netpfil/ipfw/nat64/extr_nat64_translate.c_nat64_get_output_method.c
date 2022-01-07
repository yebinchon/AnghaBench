
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * V_nat64out ;
 int nat64_direct ;

int
nat64_get_output_method(void)
{

 return (V_nat64out == &nat64_direct ? 1: 0);
}
