
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__* local; } ;
struct chap {TYPE_7__ challenge; } ;
struct authinfo {int id; TYPE_8__* physical; } ;
struct TYPE_13__ {int want_authtype; } ;
struct TYPE_14__ {TYPE_5__ lcp; } ;
struct TYPE_16__ {TYPE_6__ link; TYPE_4__* dl; } ;
struct TYPE_12__ {TYPE_3__* bundle; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_10__ {TYPE_1__ auth; } ;
struct TYPE_11__ {TYPE_2__ cfg; } ;


 int CHAP_CHALLENGE ;
 int ChapOutput (TYPE_8__*,int ,int ,scalar_t__*,scalar_t__,int *) ;
 int LogDEBUG ;
 struct chap* auth2chap (struct authinfo*) ;
 int chap_ChallengeInit (struct authinfo*) ;
 int log_Printf (int ,char*,int) ;
 int strlen (int ) ;

__attribute__((used)) static void
chap_Challenge(struct authinfo *authp)
{
  struct chap *chap = auth2chap(authp);
  int len;

  log_Printf(LogDEBUG, "CHAP%02X: Challenge\n",
             authp->physical->link.lcp.want_authtype);

  len = strlen(authp->physical->dl->bundle->cfg.auth.name);


  if (!*chap->challenge.local)
    chap_ChallengeInit(authp);


  if (authp->physical->link.lcp.want_authtype == 0x81)
    ChapOutput(authp->physical, CHAP_CHALLENGE, authp->id,
             chap->challenge.local, 1 + *chap->challenge.local, ((void*)0));
  else

    ChapOutput(authp->physical, CHAP_CHALLENGE, authp->id,
             chap->challenge.local, 1 + *chap->challenge.local + len, ((void*)0));
}
