
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int FILTER_HANDLED ;
 int openpic_dispatch (int ,int *) ;

__attribute__((used)) static int
openpic_intr(void *arg)
{
 device_t dev = (device_t)(arg);


 openpic_dispatch(dev, ((void*)0));

 return (FILTER_HANDLED);
}
