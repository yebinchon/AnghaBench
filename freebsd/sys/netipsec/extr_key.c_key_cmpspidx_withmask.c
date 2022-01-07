
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct TYPE_8__ {int sa_family; scalar_t__ sa_len; } ;
struct TYPE_7__ {int sin6_addr; int sin6_scope_id; int sin6_port; } ;
struct TYPE_6__ {int sin_addr; int sin_port; } ;
struct TYPE_9__ {TYPE_3__ sa; TYPE_2__ sin6; TYPE_1__ sin; } ;
struct secpolicyindex {scalar_t__ ul_proto; TYPE_4__ dst; int prefd; TYPE_4__ src; int prefs; } ;




 int IPSEC_PORT_ANY ;
 scalar_t__ IPSEC_ULPROTO_ANY ;
 int bcmp (TYPE_4__*,TYPE_4__*,scalar_t__) ;
 int key_bbcmp (int *,int *,int ) ;

__attribute__((used)) static int
key_cmpspidx_withmask(struct secpolicyindex *spidx0,
    struct secpolicyindex *spidx1)
{

 if (spidx0 == ((void*)0) && spidx1 == ((void*)0))
  return 1;

 if (spidx0 == ((void*)0) || spidx1 == ((void*)0))
  return 0;

 if (spidx0->src.sa.sa_family != spidx1->src.sa.sa_family ||
     spidx0->dst.sa.sa_family != spidx1->dst.sa.sa_family ||
     spidx0->src.sa.sa_len != spidx1->src.sa.sa_len ||
     spidx0->dst.sa.sa_len != spidx1->dst.sa.sa_len)
  return 0;


 if (spidx0->ul_proto != (u_int16_t)IPSEC_ULPROTO_ANY
  && spidx0->ul_proto != spidx1->ul_proto)
  return 0;

 switch (spidx0->src.sa.sa_family) {
 case 129:
  if (spidx0->src.sin.sin_port != IPSEC_PORT_ANY
   && spidx0->src.sin.sin_port != spidx1->src.sin.sin_port)
   return 0;
  if (!key_bbcmp(&spidx0->src.sin.sin_addr,
      &spidx1->src.sin.sin_addr, spidx0->prefs))
   return 0;
  break;
 case 128:
  if (spidx0->src.sin6.sin6_port != IPSEC_PORT_ANY
   && spidx0->src.sin6.sin6_port != spidx1->src.sin6.sin6_port)
   return 0;




  if (spidx0->src.sin6.sin6_scope_id &&
      spidx1->src.sin6.sin6_scope_id &&
      spidx0->src.sin6.sin6_scope_id != spidx1->src.sin6.sin6_scope_id)
   return 0;
  if (!key_bbcmp(&spidx0->src.sin6.sin6_addr,
      &spidx1->src.sin6.sin6_addr, spidx0->prefs))
   return 0;
  break;
 default:

  if (bcmp(&spidx0->src, &spidx1->src, spidx0->src.sa.sa_len) != 0)
   return 0;
  break;
 }

 switch (spidx0->dst.sa.sa_family) {
 case 129:
  if (spidx0->dst.sin.sin_port != IPSEC_PORT_ANY
   && spidx0->dst.sin.sin_port != spidx1->dst.sin.sin_port)
   return 0;
  if (!key_bbcmp(&spidx0->dst.sin.sin_addr,
      &spidx1->dst.sin.sin_addr, spidx0->prefd))
   return 0;
  break;
 case 128:
  if (spidx0->dst.sin6.sin6_port != IPSEC_PORT_ANY
   && spidx0->dst.sin6.sin6_port != spidx1->dst.sin6.sin6_port)
   return 0;




  if (spidx0->dst.sin6.sin6_scope_id &&
      spidx1->dst.sin6.sin6_scope_id &&
      spidx0->dst.sin6.sin6_scope_id != spidx1->dst.sin6.sin6_scope_id)
   return 0;
  if (!key_bbcmp(&spidx0->dst.sin6.sin6_addr,
      &spidx1->dst.sin6.sin6_addr, spidx0->prefd))
   return 0;
  break;
 default:

  if (bcmp(&spidx0->dst, &spidx1->dst, spidx0->dst.sa.sa_len) != 0)
   return 0;
  break;
 }



 return 1;
}
