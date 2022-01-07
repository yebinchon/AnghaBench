
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPPC_comp_state {int dummy; } ;



size_t MPPC_SizeOfCompressionHistory(void)
{
    return (sizeof(struct MPPC_comp_state));
}
