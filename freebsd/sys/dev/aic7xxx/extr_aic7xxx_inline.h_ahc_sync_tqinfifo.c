
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_cmd {int dummy; } ;
struct ahc_softc {int flags; int shared_data_dmamap; int shared_data_dmat; } ;


 int AHC_TARGETROLE ;
 int AHC_TMODE_CMDS ;
 int ahc_targetcmd_offset (struct ahc_softc*,int ) ;
 int aic_dmamap_sync (struct ahc_softc*,int ,int ,int ,int,int) ;

__attribute__((used)) static __inline void
ahc_sync_tqinfifo(struct ahc_softc *ahc, int op)
{
}
