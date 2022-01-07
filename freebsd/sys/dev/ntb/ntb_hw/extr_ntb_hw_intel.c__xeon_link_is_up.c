
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {scalar_t__ conn_type; int lnk_sta; } ;


 scalar_t__ NTB_CONN_TRANSPARENT ;
 int NTB_LINK_STATUS_ACTIVE ;

__attribute__((used)) static inline bool
_xeon_link_is_up(struct ntb_softc *ntb)
{

 if (ntb->conn_type == NTB_CONN_TRANSPARENT)
  return (1);
 return ((ntb->lnk_sta & NTB_LINK_STATUS_ACTIVE) != 0);
}
