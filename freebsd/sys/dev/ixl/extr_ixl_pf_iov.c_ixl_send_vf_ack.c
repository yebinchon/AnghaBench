
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ixl_vf {int dummy; } ;
struct ixl_pf {int dummy; } ;


 int I40E_SUCCESS ;
 int ixl_send_vf_msg (struct ixl_pf*,struct ixl_vf*,int ,int ,int *,int ) ;

__attribute__((used)) static void
ixl_send_vf_ack(struct ixl_pf *pf, struct ixl_vf *vf, uint16_t op)
{

 ixl_send_vf_msg(pf, vf, op, I40E_SUCCESS, ((void*)0), 0);
}
