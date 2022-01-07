
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_long ;
typedef int csa_res ;
struct TYPE_4__ {size_t BA1Array; TYPE_1__* MemoryStat; } ;
struct TYPE_3__ {int ulSourceSize; int ulDestAddr; } ;


 size_t INKY_MEMORY_COUNT ;
 TYPE_2__ cs461x_firmware ;
 int csa_transferimage (int *,size_t,int ,int) ;

__attribute__((used)) static int
csa_downloadimage(csa_res *resp)
{
 int ret;
 u_long ul, offset;

 for (ul = 0, offset = 0 ; ul < INKY_MEMORY_COUNT ; ul++) {




  ret = csa_transferimage(resp,
      cs461x_firmware.BA1Array + offset,
      cs461x_firmware.MemoryStat[ul].ulDestAddr,
      cs461x_firmware.MemoryStat[ul].ulSourceSize);
  if (ret)
   return (ret);
  offset += cs461x_firmware.MemoryStat[ul].ulSourceSize >> 2;
 }
 return (0);
}
