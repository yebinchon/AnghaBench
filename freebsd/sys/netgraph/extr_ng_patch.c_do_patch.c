
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union ng_patch_op_val {int v1; int v2; int v4; int v8; } ;
struct TYPE_8__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef TYPE_6__* priv_p ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int caddr_t ;
struct TYPE_12__ {int patched; } ;
struct TYPE_13__ {TYPE_5__ stats; TYPE_4__* conf; } ;
struct TYPE_11__ {int count; TYPE_3__* ops; } ;
struct TYPE_9__ {int v1; int v2; int v4; int v8; } ;
struct TYPE_10__ {int offset; int length; scalar_t__ mode; TYPE_2__ val; } ;
 int be64toh (int) ;
 int htobe64 (int) ;
 int htonl (int) ;
 int htons (int) ;
 int m_copyback (struct mbuf*,int,int,int ) ;
 int m_copydata (struct mbuf*,int,int,int ) ;
 int ntohl (int) ;
 int ntohs (int) ;

__attribute__((used)) static void
do_patch(priv_p privp, struct mbuf *m, int global_offset)
{
 int i, offset, patched = 0;
 union ng_patch_op_val val;

 for (i = 0; i < privp->conf->count; i++) {
  offset = global_offset + privp->conf->ops[i].offset;

  if (offset + privp->conf->ops[i].length > m->m_pkthdr.len)
   continue;


  if (privp->conf->ops[i].mode != 132)
   m_copydata(m, offset, privp->conf->ops[i].length, (caddr_t) &val);

  switch (privp->conf->ops[i].length)
  {
   case 1:
    switch (privp->conf->ops[i].mode)
    {
     case 132:
      val.v1 = privp->conf->ops[i].val.v1;
      break;
     case 138:
      val.v1 += privp->conf->ops[i].val.v1;
      break;
     case 129:
      val.v1 -= privp->conf->ops[i].val.v1;
      break;
     case 135:
      val.v1 *= privp->conf->ops[i].val.v1;
      break;
     case 136:
      val.v1 /= privp->conf->ops[i].val.v1;
      break;
     case 134:
      *((int8_t *) &val) = - *((int8_t *) &val);
      break;
     case 137:
      val.v1 &= privp->conf->ops[i].val.v1;
      break;
     case 133:
      val.v1 |= privp->conf->ops[i].val.v1;
      break;
     case 128:
      val.v1 ^= privp->conf->ops[i].val.v1;
      break;
     case 131:
      val.v1 <<= privp->conf->ops[i].val.v1;
      break;
     case 130:
      val.v1 >>= privp->conf->ops[i].val.v1;
      break;
    }
    break;

   case 2:
    val.v2 = ntohs(val.v2);

    switch (privp->conf->ops[i].mode)
    {
     case 132:
      val.v2 = privp->conf->ops[i].val.v2;
      break;
     case 138:
      val.v2 += privp->conf->ops[i].val.v2;
      break;
     case 129:
      val.v2 -= privp->conf->ops[i].val.v2;
      break;
     case 135:
      val.v2 *= privp->conf->ops[i].val.v2;
      break;
     case 136:
      val.v2 /= privp->conf->ops[i].val.v2;
      break;
     case 134:
      *((int16_t *) &val) = - *((int16_t *) &val);
      break;
     case 137:
      val.v2 &= privp->conf->ops[i].val.v2;
      break;
     case 133:
      val.v2 |= privp->conf->ops[i].val.v2;
      break;
     case 128:
      val.v2 ^= privp->conf->ops[i].val.v2;
      break;
     case 131:
      val.v2 <<= privp->conf->ops[i].val.v2;
      break;
     case 130:
      val.v2 >>= privp->conf->ops[i].val.v2;
      break;
    }

    val.v2 = htons(val.v2);

    break;

   case 4:
    val.v4 = ntohl(val.v4);

    switch (privp->conf->ops[i].mode)
    {
     case 132:
      val.v4 = privp->conf->ops[i].val.v4;
      break;
     case 138:
      val.v4 += privp->conf->ops[i].val.v4;
      break;
     case 129:
      val.v4 -= privp->conf->ops[i].val.v4;
      break;
     case 135:
      val.v4 *= privp->conf->ops[i].val.v4;
      break;
     case 136:
      val.v4 /= privp->conf->ops[i].val.v4;
      break;
     case 134:
      *((int32_t *) &val) = - *((int32_t *) &val);
      break;
     case 137:
      val.v4 &= privp->conf->ops[i].val.v4;
      break;
     case 133:
      val.v4 |= privp->conf->ops[i].val.v4;
      break;
     case 128:
      val.v4 ^= privp->conf->ops[i].val.v4;
      break;
     case 131:
      val.v4 <<= privp->conf->ops[i].val.v4;
      break;
     case 130:
      val.v4 >>= privp->conf->ops[i].val.v4;
      break;
    }

    val.v4 = htonl(val.v4);

    break;

   case 8:
    val.v8 = be64toh(val.v8);

    switch (privp->conf->ops[i].mode)
    {
     case 132:
      val.v8 = privp->conf->ops[i].val.v8;
      break;
     case 138:
      val.v8 += privp->conf->ops[i].val.v8;
      break;
     case 129:
      val.v8 -= privp->conf->ops[i].val.v8;
      break;
     case 135:
      val.v8 *= privp->conf->ops[i].val.v8;
      break;
     case 136:
      val.v8 /= privp->conf->ops[i].val.v8;
      break;
     case 134:
      *((int64_t *) &val) = - *((int64_t *) &val);
      break;
     case 137:
      val.v8 &= privp->conf->ops[i].val.v8;
      break;
     case 133:
      val.v8 |= privp->conf->ops[i].val.v8;
      break;
     case 128:
      val.v8 ^= privp->conf->ops[i].val.v8;
      break;
     case 131:
      val.v8 <<= privp->conf->ops[i].val.v8;
      break;
     case 130:
      val.v8 >>= privp->conf->ops[i].val.v8;
      break;
    }

    val.v8 = htobe64(val.v8);

    break;
  }

  m_copyback(m, offset, privp->conf->ops[i].length, (caddr_t) &val);
  patched = 1;
 }

 if (patched)
  privp->stats.patched++;
}
