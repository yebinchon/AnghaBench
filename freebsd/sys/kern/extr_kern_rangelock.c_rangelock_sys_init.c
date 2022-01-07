
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_q_entry {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int rl_entry_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
rangelock_sys_init(void)
{

 rl_entry_zone = uma_zcreate("rl_entry", sizeof(struct rl_q_entry),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
}
