
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_phy_db {int n_group_txp; int n_group_papd; struct iwm_softc* sc; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct iwm_phy_db* malloc (int,int ,int) ;

struct iwm_phy_db *
iwm_phy_db_init(struct iwm_softc *sc)
{
 struct iwm_phy_db *phy_db = malloc(sizeof(struct iwm_phy_db),
     M_DEVBUF, M_NOWAIT | M_ZERO);

 if (!phy_db)
  return phy_db;

 phy_db->sc = sc;

 phy_db->n_group_txp = -1;
 phy_db->n_group_papd = -1;


 return phy_db;
}
