
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rman_res_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int host_mem_start ;

rman_res_t
hostb_alloc_start(int type, rman_res_t start, rman_res_t end, rman_res_t count)
{

 if (start + count - 1 != end) {
  if (type == SYS_RES_MEMORY && start < host_mem_start)
   start = host_mem_start;
  if (type == SYS_RES_IOPORT && start < 0x1000)
   start = 0x1000;
 }
 return (start);
}
