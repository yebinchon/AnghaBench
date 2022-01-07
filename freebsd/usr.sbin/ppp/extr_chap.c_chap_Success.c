
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* file; } ;
struct TYPE_12__ {char* msrepstr; char* repstr; TYPE_1__ cfg; } ;
struct bundle {TYPE_2__ radius; } ;
struct TYPE_13__ {int name; } ;
struct authinfo {TYPE_6__* physical; TYPE_3__ in; int id; } ;
struct TYPE_18__ {char* authresponse; } ;
struct TYPE_17__ {struct bundle* bundle; } ;
struct TYPE_14__ {int want_authtype; scalar_t__ auth_iwait; scalar_t__ auth_ineed; } ;
struct TYPE_15__ {TYPE_4__ lcp; } ;
struct TYPE_16__ {TYPE_7__* dl; TYPE_5__ link; } ;


 int CHAP_SUCCESS ;
 int ChapOutput (TYPE_6__*,int ,int ,char const*,int ,int *) ;
 scalar_t__ Enabled (struct bundle*,int ) ;
 int MPPE_MasterKeyValid ;
 int OPT_UTMP ;
 TYPE_9__* auth2chap (struct authinfo*) ;
 int datalink_AuthOk (TYPE_7__*) ;
 int datalink_GotAuthname (TYPE_7__*,int ) ;
 int physical_Login (TYPE_6__*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
chap_Success(struct authinfo *authp)
{
  struct bundle *bundle = authp->physical->dl->bundle;
  const char *msg;

  datalink_GotAuthname(authp->physical->dl, authp->in.name);

  if (authp->physical->link.lcp.want_authtype == 0x81) {

    if (*bundle->radius.cfg.file && bundle->radius.msrepstr)
      msg = bundle->radius.msrepstr;
    else

      msg = auth2chap(authp)->authresponse;
    MPPE_MasterKeyValid = 1;
  } else


  if (*bundle->radius.cfg.file && bundle->radius.repstr)
    msg = bundle->radius.repstr;
  else

    msg = "Welcome!!";

  ChapOutput(authp->physical, CHAP_SUCCESS, authp->id, msg, strlen(msg),
             ((void*)0));

  authp->physical->link.lcp.auth_ineed = 0;
  if (Enabled(bundle, OPT_UTMP))
    physical_Login(authp->physical, authp->in.name);

  if (authp->physical->link.lcp.auth_iwait == 0)




    datalink_AuthOk(authp->physical->dl);
}
