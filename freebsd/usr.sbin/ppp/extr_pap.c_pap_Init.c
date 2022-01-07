
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int dummy; } ;
struct authinfo {int dummy; } ;


 int auth_Init (struct authinfo*,struct physical*,int ,int ,int ) ;
 int pap_Failure ;
 int pap_Req ;
 int pap_Success ;

void
pap_Init(struct authinfo *pap, struct physical *p)
{
  auth_Init(pap, p, pap_Req, pap_Success, pap_Failure);
}
