
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_P1003_1B_FSYNC ;
 int CTL_P1003_1B_MAPPED_FILES ;
 int CTL_P1003_1B_PAGESIZE ;
 int CTL_P1003_1B_SHARED_MEMORY_OBJECTS ;
 long PAGE_SIZE ;
 int p31b_setcfg (int ,long) ;

__attribute__((used)) static void
p31b_set_standard(void *dummy)
{

 p31b_setcfg(CTL_P1003_1B_FSYNC, 200112L);
 p31b_setcfg(CTL_P1003_1B_MAPPED_FILES, 200112L);
 p31b_setcfg(CTL_P1003_1B_SHARED_MEMORY_OBJECTS, 200112L);
 p31b_setcfg(CTL_P1003_1B_PAGESIZE, PAGE_SIZE);
}
