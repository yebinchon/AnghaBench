
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_TEMP ;
 int free (int *,int ) ;

void
bhnd_bus_free_children(device_t *devlist)
{
 free(devlist, M_TEMP);
}
