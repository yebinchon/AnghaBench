
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ifn {int registered_af; int ifn_index; int ifn_p; } ;


 int LIST_REMOVE (struct sctp_ifn*,int ) ;
 int SCTP_DEREGISTER_INTERFACE (int ,int ) ;
 int SCTP_IPI_ADDR_WLOCK () ;
 int SCTP_IPI_ADDR_WUNLOCK () ;
 int next_bucket ;
 int next_ifn ;
 struct sctp_ifn* sctp_find_ifn (int ,int ) ;
 int sctp_free_ifn (struct sctp_ifn*) ;

__attribute__((used)) static void
sctp_delete_ifn(struct sctp_ifn *sctp_ifnp, int hold_addr_lock)
{
 struct sctp_ifn *found;

 found = sctp_find_ifn(sctp_ifnp->ifn_p, sctp_ifnp->ifn_index);
 if (found == ((void*)0)) {

  return;
 }
 if (hold_addr_lock == 0)
  SCTP_IPI_ADDR_WLOCK();
 LIST_REMOVE(sctp_ifnp, next_bucket);
 LIST_REMOVE(sctp_ifnp, next_ifn);
 SCTP_DEREGISTER_INTERFACE(sctp_ifnp->ifn_index,
     sctp_ifnp->registered_af);
 if (hold_addr_lock == 0)
  SCTP_IPI_ADDR_WUNLOCK();

 sctp_free_ifn(sctp_ifnp);
}
