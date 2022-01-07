
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int assert_deassert_all (int ,int) ;

int
fdt_reset_deassert_all(device_t consumer)
{

 return (assert_deassert_all(consumer, 0));
}
