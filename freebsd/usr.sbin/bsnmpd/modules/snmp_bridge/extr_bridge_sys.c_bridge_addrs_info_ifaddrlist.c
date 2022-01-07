
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {int status; int port_no; } ;
struct ifbareq {int ifba_flags; int ifba_ifsname; } ;


 int IFBAF_STATIC ;
 int IFBAF_TYPEMASK ;
 int TpFdbStatus_learned ;
 int TpFdbStatus_mgmt ;
 int if_nametoindex (int ) ;

__attribute__((used)) static void
bridge_addrs_info_ifaddrlist(struct ifbareq *ifba, struct tp_entry *tpe)
{
 tpe->port_no = if_nametoindex(ifba->ifba_ifsname);

 if ((ifba->ifba_flags & IFBAF_TYPEMASK) == IFBAF_STATIC)
  tpe->status = TpFdbStatus_mgmt;
 else
  tpe->status = TpFdbStatus_learned;
}
