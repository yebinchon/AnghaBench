
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpr_softc {scalar_t__ chain_frame_size; int chain_free_lowwater; scalar_t__ chain_frames; struct mpr_chain* chains; } ;
struct mpr_chain {scalar_t__ chain_busaddr; int * chain; } ;
typedef scalar_t__ bus_size_t ;
struct TYPE_3__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int MPI2_SGE_IO_UNION ;


 int mpr_free_chain (struct mpr_softc*,struct mpr_chain*) ;

__attribute__((used)) static void
mpr_load_chains_cb(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct mpr_softc *sc = arg;
 struct mpr_chain *chain;
 bus_size_t bo;
 int i, o, s;

 if (error != 0)
  return;

 for (i = 0, o = 0, s = 0; s < nsegs; s++) {
  for (bo = 0; bo + sc->chain_frame_size <= segs[s].ds_len;
      bo += sc->chain_frame_size) {
   chain = &sc->chains[i++];
   chain->chain =(MPI2_SGE_IO_UNION *)(sc->chain_frames+o);
   chain->chain_busaddr = segs[s].ds_addr + bo;
   o += sc->chain_frame_size;
   mpr_free_chain(sc, chain);
  }
  if (bo != segs[s].ds_len)
   o += segs[s].ds_len - bo;
 }
 sc->chain_free_lowwater = i;
}
