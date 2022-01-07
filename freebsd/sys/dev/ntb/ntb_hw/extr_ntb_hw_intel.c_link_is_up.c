
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {scalar_t__ type; int ntb_ctl; scalar_t__ peer_msix_good; } ;


 int ATOM_CNTL_LINK_DOWN ;
 int HAS_FEATURE (struct ntb_softc*,int ) ;
 int KASSERT (int,char*) ;
 scalar_t__ NTB_ATOM ;
 int NTB_SB01BASE_LOCKUP ;
 scalar_t__ NTB_XEON ;
 scalar_t__ _xeon_link_is_up (struct ntb_softc*) ;

__attribute__((used)) static inline bool
link_is_up(struct ntb_softc *ntb)
{

 if (ntb->type == NTB_XEON)
  return (_xeon_link_is_up(ntb) && (ntb->peer_msix_good ||
      !HAS_FEATURE(ntb, NTB_SB01BASE_LOCKUP)));

 KASSERT(ntb->type == NTB_ATOM, ("ntb type"));
 return ((ntb->ntb_ctl & ATOM_CNTL_LINK_DOWN) == 0);
}
