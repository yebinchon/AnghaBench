
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * V_nat64out ;
 int nat64_direct ;
 int nat64_netisr ;

void
nat64_set_output_method(int direct)
{

 V_nat64out = direct != 0 ? &nat64_direct: &nat64_netisr;
}
