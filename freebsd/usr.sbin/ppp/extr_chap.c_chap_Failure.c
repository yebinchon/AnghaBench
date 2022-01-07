
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


struct TYPE_10__ {scalar_t__* file; } ;
struct TYPE_11__ {char* errstr; TYPE_2__ cfg; } ;
struct bundle {TYPE_3__ radius; } ;
struct authinfo {TYPE_8__* physical; int id; } ;
struct TYPE_9__ {struct bundle* bundle; } ;
struct TYPE_12__ {int want_authtype; TYPE_1__ fsm; } ;
struct TYPE_13__ {TYPE_4__ lcp; } ;
struct TYPE_16__ {int dl; TYPE_5__ link; } ;
struct TYPE_14__ {int* local; } ;
struct TYPE_15__ {TYPE_6__ challenge; } ;


 int CHAP_FAILURE ;
 int ChapOutput (TYPE_8__*,int ,int ,char const*,scalar_t__,int *) ;
 TYPE_7__* auth2chap (struct authinfo*) ;
 int datalink_AuthNotOk (int ) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
chap_Failure(struct authinfo *authp)
{

  char buf[1024], *ptr;

  const char *msg;


  struct bundle *bundle = authp->physical->link.lcp.fsm.bundle;
  if (*bundle->radius.cfg.file && bundle->radius.errstr)
    msg = bundle->radius.errstr;
  else


  if (authp->physical->link.lcp.want_authtype == 0x80) {
    sprintf(buf, "E=691 R=1 M=Invalid!");
    msg = buf;
  } else if (authp->physical->link.lcp.want_authtype == 0x81) {
    int i;

    ptr = buf;
    ptr += sprintf(buf, "E=691 R=0 C=");
    for (i=0; i<16; i++)
      ptr += sprintf(ptr, "%02X", *(auth2chap(authp)->challenge.local+1+i));

    sprintf(ptr, " V=3 M=Invalid!");
    msg = buf;
  } else

    msg = "Invalid!!";

  ChapOutput(authp->physical, CHAP_FAILURE, authp->id, msg, strlen(msg) + 1,
             ((void*)0));
  datalink_AuthNotOk(authp->physical->dl);
}
