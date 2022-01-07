
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int tpm20_save_state (int ,int) ;

int
tpm20_shutdown(device_t dev)
{
 return (tpm20_save_state(dev, 0));
}
