
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t isp_maxcmds; TYPE_1__* isp_xflist; } ;
typedef TYPE_2__ ispsoftc_t ;
struct TYPE_4__ {void* cmd; size_t handle; } ;


 size_t ISP_HANDLE_FREE ;

uint32_t
isp_find_handle(ispsoftc_t *isp, void *xs)
{
 uint32_t i, foundhdl = ISP_HANDLE_FREE;

 if (xs != ((void*)0)) {
  for (i = 0; i < isp->isp_maxcmds; i++) {
   if (isp->isp_xflist[i].cmd != xs) {
    continue;
   }
   foundhdl = isp->isp_xflist[i].handle;
   break;
  }
 }
 return (foundhdl);
}
