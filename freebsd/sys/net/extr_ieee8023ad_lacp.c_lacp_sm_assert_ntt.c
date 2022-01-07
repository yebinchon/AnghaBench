
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_port {int lp_flags; } ;


 int LACP_PORT_NTT ;

__attribute__((used)) static void
lacp_sm_assert_ntt(struct lacp_port *lp)
{

 lp->lp_flags |= LACP_PORT_NTT;
}
