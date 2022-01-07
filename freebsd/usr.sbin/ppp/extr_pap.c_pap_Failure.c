
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct authinfo {TYPE_1__* physical; } ;
struct TYPE_2__ {int dl; } ;


 int PAP_NAK ;
 int SendPapCode (struct authinfo*,int ,char*) ;
 int datalink_AuthNotOk (int ) ;

__attribute__((used)) static void
pap_Failure(struct authinfo *authp)
{
  SendPapCode(authp, PAP_NAK, "Login incorrect");
  datalink_AuthNotOk(authp->physical->dl);
}
