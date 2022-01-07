
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__* file; } ;
struct TYPE_10__ {char* repstr; TYPE_1__ cfg; } ;
struct bundle {TYPE_2__ radius; } ;
struct TYPE_11__ {int name; } ;
struct authinfo {TYPE_6__* physical; TYPE_3__ in; } ;
struct TYPE_15__ {struct bundle* bundle; } ;
struct TYPE_12__ {scalar_t__ auth_iwait; scalar_t__ auth_ineed; } ;
struct TYPE_13__ {TYPE_4__ lcp; } ;
struct TYPE_14__ {TYPE_7__* dl; TYPE_5__ link; } ;


 scalar_t__ Enabled (struct bundle*,int ) ;
 int OPT_UTMP ;
 int PAP_ACK ;
 int SendPapCode (struct authinfo*,int ,char*) ;
 int datalink_AuthOk (TYPE_7__*) ;
 int datalink_GotAuthname (TYPE_7__*,int ) ;
 int physical_Login (TYPE_6__*,int ) ;

__attribute__((used)) static void
pap_Success(struct authinfo *authp)
{
  struct bundle *bundle = authp->physical->dl->bundle;

  datalink_GotAuthname(authp->physical->dl, authp->in.name);

  if (*bundle->radius.cfg.file && bundle->radius.repstr)
    SendPapCode(authp, PAP_ACK, bundle->radius.repstr);
  else

    SendPapCode(authp, PAP_ACK, "Greetings!!");
  authp->physical->link.lcp.auth_ineed = 0;
  if (Enabled(bundle, OPT_UTMP))
    physical_Login(authp->physical, authp->in.name);

  if (authp->physical->link.lcp.auth_iwait == 0)




    datalink_AuthOk(authp->physical->dl);
}
