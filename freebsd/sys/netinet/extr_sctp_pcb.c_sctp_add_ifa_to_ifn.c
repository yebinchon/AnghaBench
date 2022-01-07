
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ifn {int ifa_count; int registered_af; int ifn_index; int num_v6; int num_v4; int refcount; int ifalist; } ;
struct TYPE_3__ {int sa_family; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;
struct sctp_ifa {TYPE_2__ address; struct sctp_ifn* ifn_p; } ;




 int LIST_INSERT_HEAD (int *,struct sctp_ifa*,int ) ;
 int SCTP_REGISTER_INTERFACE (int ,int) ;
 int atomic_add_int (int *,int) ;
 int next_ifa ;

__attribute__((used)) static void
sctp_add_ifa_to_ifn(struct sctp_ifn *sctp_ifnp, struct sctp_ifa *sctp_ifap)
{
 int ifa_af;

 LIST_INSERT_HEAD(&sctp_ifnp->ifalist, sctp_ifap, next_ifa);
 sctp_ifap->ifn_p = sctp_ifnp;
 atomic_add_int(&sctp_ifap->ifn_p->refcount, 1);

 sctp_ifnp->ifa_count++;
 ifa_af = sctp_ifap->address.sa.sa_family;
 switch (ifa_af) {
 default:
  break;
 }
 if (sctp_ifnp->ifa_count == 1) {

  SCTP_REGISTER_INTERFACE(sctp_ifnp->ifn_index, ifa_af);
  sctp_ifnp->registered_af = ifa_af;
 }
}
