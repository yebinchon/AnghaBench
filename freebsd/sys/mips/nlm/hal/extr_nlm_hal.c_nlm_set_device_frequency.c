
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int SYS_DFS_DIV_DEC_CTRL ;
 int SYS_DFS_DIV_INC_CTRL ;
 int nlm_get_device_frequency (int ,int) ;
 int nlm_get_sys_regbase (int) ;
 int nlm_write_sys_reg (int ,int ,int) ;

int
nlm_set_device_frequency(int node, int devtype, int frequency)
{
 uint64_t sysbase;
 u_int cur_freq;
 int dec_div;

 sysbase = nlm_get_sys_regbase(node);
 cur_freq = nlm_get_device_frequency(sysbase, devtype);
 if (cur_freq < (frequency - 5))
  dec_div = 1;
 else
  dec_div = 0;

 for(;;) {
  if ((cur_freq >= (frequency - 5)) && (cur_freq <= frequency))
   break;
  if (dec_div)
   nlm_write_sys_reg(sysbase, SYS_DFS_DIV_DEC_CTRL,
       (1 << devtype));
  else
   nlm_write_sys_reg(sysbase, SYS_DFS_DIV_INC_CTRL,
       (1 << devtype));
  cur_freq = nlm_get_device_frequency(sysbase, devtype);
 }
 return (nlm_get_device_frequency(sysbase, devtype));
}
