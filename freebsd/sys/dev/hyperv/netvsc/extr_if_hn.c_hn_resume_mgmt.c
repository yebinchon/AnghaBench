
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_link_flags; int hn_mgmt_taskq0; int hn_mgmt_taskq; } ;


 int HN_LINK_FLAG_NETCHG ;
 int hn_change_network (struct hn_softc*) ;
 int hn_update_link_status (struct hn_softc*) ;

__attribute__((used)) static void
hn_resume_mgmt(struct hn_softc *sc)
{

 sc->hn_mgmt_taskq = sc->hn_mgmt_taskq0;







 if (sc->hn_link_flags & HN_LINK_FLAG_NETCHG)
  hn_change_network(sc);
 else
  hn_update_link_status(sc);
}
