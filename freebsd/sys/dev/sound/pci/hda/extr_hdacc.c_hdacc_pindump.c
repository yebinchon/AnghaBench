
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int HDAC_PINDUMP (int ) ;
 int M_TEMP ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 int free (int *,int ) ;

__attribute__((used)) static void
hdacc_pindump(device_t dev)
{
 device_t *devlist;
 int devcount, i;

 if (device_get_children(dev, &devlist, &devcount) != 0)
  return;
 for (i = 0; i < devcount; i++)
  HDAC_PINDUMP(devlist[i]);
 free(devlist, M_TEMP);
}
