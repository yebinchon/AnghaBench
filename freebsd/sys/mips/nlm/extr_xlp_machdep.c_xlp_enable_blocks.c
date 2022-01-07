
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int DFS_DEVICE_RSA ;
 int XLP_IO_SYS_OFFSET (int) ;
 int XLP_MAX_NODES ;
 int nlm_dev_exists (int ) ;
 int nlm_get_sys_regbase (int) ;
 int nlm_sys_enable_block (int ,int ) ;

__attribute__((used)) static void
xlp_enable_blocks(void)
{
 uint64_t sysbase;
 int i;

 for (i = 0; i < XLP_MAX_NODES; i++) {
  if (!nlm_dev_exists(XLP_IO_SYS_OFFSET(i)))
   continue;
  sysbase = nlm_get_sys_regbase(i);
  nlm_sys_enable_block(sysbase, DFS_DEVICE_RSA);
 }
}
