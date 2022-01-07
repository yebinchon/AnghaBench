
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct nfsmount {int nm_mountp; } ;
struct nfsclsession {scalar_t__ nfsess_defunct; int nfsess_foreslots; int nfsess_slots; int nfsess_mtx; int nfsess_sessionid; scalar_t__* nfsess_slotseq; } ;


 int ESTALE ;
 scalar_t__ NFSCL_FORCEDISM (int ) ;
 int NFSERR_BADSESSION ;
 int NFSX_V4SESSIONID ;
 int PZERO ;
 int bcopy (int ,int *,int ) ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_sleep (int*,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;

int
nfsv4_sequencelookup(struct nfsmount *nmp, struct nfsclsession *sep,
    int *slotposp, int *maxslotp, uint32_t *slotseqp, uint8_t *sessionid)
{
 int i, maxslot, slotpos;
 uint64_t bitval;


 slotpos = -1;
 maxslot = -1;
 mtx_lock(&sep->nfsess_mtx);
 do {
  if (nmp != ((void*)0) && sep->nfsess_defunct != 0) {

   bcopy(sep->nfsess_sessionid, sessionid,
       NFSX_V4SESSIONID);
   mtx_unlock(&sep->nfsess_mtx);
   return (NFSERR_BADSESSION);
  }
  bitval = 1;
  for (i = 0; i < sep->nfsess_foreslots; i++) {
   if ((bitval & sep->nfsess_slots) == 0) {
    slotpos = i;
    sep->nfsess_slots |= bitval;
    sep->nfsess_slotseq[i]++;
    *slotseqp = sep->nfsess_slotseq[i];
    break;
   }
   bitval <<= 1;
  }
  if (slotpos == -1) {





   if (nmp != ((void*)0) && NFSCL_FORCEDISM(nmp->nm_mountp)) {
    mtx_unlock(&sep->nfsess_mtx);
    return (ESTALE);
   }

   (void)mtx_sleep(&sep->nfsess_slots, &sep->nfsess_mtx,
       PZERO, "nfsclseq", hz);
  }
 } while (slotpos == -1);

 bitval = 1;
 for (i = 0; i < 64; i++) {
  if ((bitval & sep->nfsess_slots) != 0)
   maxslot = i;
  bitval <<= 1;
 }
 bcopy(sep->nfsess_sessionid, sessionid, NFSX_V4SESSIONID);
 mtx_unlock(&sep->nfsess_mtx);
 *slotposp = slotpos;
 *maxslotp = maxslot;
 return (0);
}
