
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_port {int dummy; } ;


 int lacp_sm_assert_ntt (struct lacp_port*) ;

__attribute__((used)) static void
lacp_sm_ptx_timer(struct lacp_port *lp)
{
 lacp_sm_assert_ntt(lp);
}
