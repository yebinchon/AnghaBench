
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_len; } ;
struct TYPE_12__ {int sa_len; int sa_family; } ;
struct TYPE_13__ {TYPE_5__ sa; } ;
struct TYPE_10__ {int sa_len; int sa_family; } ;
struct TYPE_11__ {TYPE_3__ sa; } ;
struct TYPE_14__ {TYPE_6__ dst; TYPE_4__ src; int ul_proto; int dir; } ;
struct secpolicy {TYPE_7__ spidx; int priority; int created; int tcount; struct ipsecrequest** req; int state; int policy; } ;
struct TYPE_9__ {int dst; int src; int reqid; int mode; int proto; } ;
struct ipsecrequest {TYPE_2__ saidx; int level; } ;
struct ipsec_softc {TYPE_1__* ifp; } ;
struct TYPE_8__ {int if_index; } ;


 int AF_INET ;
 int AF_INET6 ;
 int ENOMEM ;
 int IPPROTO_ESP ;
 int IPSEC_DIR_INBOUND ;
 int IPSEC_DIR_OUTBOUND ;
 int IPSEC_LEVEL_UNIQUE ;
 int IPSEC_MODE_TUNNEL ;
 int IPSEC_POLICY_IPSEC ;
 int IPSEC_SPCOUNT ;
 int IPSEC_SPSTATE_DEAD ;
 int IPSEC_ULPROTO_ANY ;
 int bcopy (struct sockaddr const*,int *,int ) ;
 struct ipsecrequest* ipsec_newisr () ;
 int key_freesp (struct secpolicy**) ;
 struct secpolicy* key_newsp () ;
 int memset (struct secpolicy**,int ,int) ;
 int time_second ;

__attribute__((used)) static int
ipsec_newpolicies(struct ipsec_softc *sc, struct secpolicy *sp[IPSEC_SPCOUNT],
    const struct sockaddr *src, const struct sockaddr *dst, uint32_t reqid)
{
 struct ipsecrequest *isr;
 int i;

 memset(sp, 0, sizeof(struct secpolicy *) * IPSEC_SPCOUNT);
 for (i = 0; i < IPSEC_SPCOUNT; i++) {
  if ((sp[i] = key_newsp()) == ((void*)0))
   goto fail;
  if ((isr = ipsec_newisr()) == ((void*)0))
   goto fail;

  sp[i]->policy = IPSEC_POLICY_IPSEC;
  sp[i]->state = IPSEC_SPSTATE_DEAD;
  sp[i]->req[sp[i]->tcount++] = isr;
  sp[i]->created = time_second;

  sp[i]->priority = sc->ifp->if_index;
  isr->level = IPSEC_LEVEL_UNIQUE;
  isr->saidx.proto = IPPROTO_ESP;
  isr->saidx.mode = IPSEC_MODE_TUNNEL;
  isr->saidx.reqid = reqid;
  if (i % 2 == 0) {
   sp[i]->spidx.dir = IPSEC_DIR_INBOUND;
   bcopy(src, &isr->saidx.dst, src->sa_len);
   bcopy(dst, &isr->saidx.src, dst->sa_len);
  } else {
   sp[i]->spidx.dir = IPSEC_DIR_OUTBOUND;
   bcopy(src, &isr->saidx.src, src->sa_len);
   bcopy(dst, &isr->saidx.dst, dst->sa_len);
  }
  sp[i]->spidx.ul_proto = IPSEC_ULPROTO_ANY;
 }
 return (0);
fail:
 for (i = 0; i < IPSEC_SPCOUNT; i++)
  key_freesp(&sp[i]);
 return (ENOMEM);
}
