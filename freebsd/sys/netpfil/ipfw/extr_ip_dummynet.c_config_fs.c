
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dn_schk {int * siht; } ;
struct dn_id {int dummy; } ;
struct TYPE_3__ {int len; } ;
struct dn_fs {int fs_nr; int flags; int qsize; int buckets; int* par; int sched_nr; TYPE_1__ oid; } ;
struct dn_fsk {int * aqmfp; struct dn_fs fs; scalar_t__ sched; } ;
struct dn_extra_parms {int dummy; } ;
struct TYPE_4__ {int hash_size; int fsk_count; int id; int fshash; int max_hash_size; int slot_limit; int byte_limit; } ;


 int D (char*,int) ;
 int DNHT_INSERT ;
 int DN_BH_WLOCK () ;
 int DN_BH_WUNLOCK () ;
 int DN_DESTROY ;
 int DN_DETACH ;
 int DN_HAVE_MASK ;
 int DN_MAX_ID ;
 int DN_QSIZE_BYTES ;
 int DX (int,char*,int,int ,scalar_t__,int ,struct dn_schk*) ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_WAITOK ;
 int ND (char*,int) ;
 scalar_t__ bcmp (struct dn_fs*,struct dn_fs*,int) ;
 int config_aqm (struct dn_fsk*,struct dn_extra_parms*,int) ;
 TYPE_2__ dn_cfg ;
 struct dn_fsk* dn_ht_find (int ,int,int,int *) ;
 int free (struct dn_extra_parms*,int ) ;
 int fsk_attach (struct dn_fsk*,struct dn_schk*) ;
 int fsk_detach (struct dn_fsk*,int) ;
 int ipdn_bound_var (int*,int,int,int ,char*) ;
 struct dn_schk* locate_scheduler (int ) ;
 struct dn_extra_parms* malloc (int,int ,int ) ;
 int memcpy (struct dn_extra_parms*,struct dn_id*,int) ;

__attribute__((used)) static struct dn_fsk *
config_fs(struct dn_fs *nfs, struct dn_id *arg, int locked)
{
 int i;
 struct dn_fsk *fs;




 if (nfs->oid.len != sizeof(*nfs)) {
  D("invalid flowset len %d", nfs->oid.len);
  return ((void*)0);
 }
 i = nfs->fs_nr;
 if (i <= 0 || i >= 3*DN_MAX_ID)
  return ((void*)0);
 ND("flowset %d", i);

        if (nfs->flags & DN_QSIZE_BYTES) {
  ipdn_bound_var(&nfs->qsize, 16384,
      1500, dn_cfg.byte_limit, ((void*)0));
        } else {
  ipdn_bound_var(&nfs->qsize, 50,
      1, dn_cfg.slot_limit, ((void*)0));
        }
 if (nfs->flags & DN_HAVE_MASK) {

  ipdn_bound_var((int *)&nfs->buckets, dn_cfg.hash_size,
   1, dn_cfg.max_hash_size, "flowset buckets");
 } else {
  nfs->buckets = 1;
 }
 if (!locked)
  DN_BH_WLOCK();
 do {
     struct dn_schk *s;
     int flags = nfs->sched_nr ? DNHT_INSERT : 0;
     int j;
     int oldc = dn_cfg.fsk_count;
     fs = dn_ht_find(dn_cfg.fshash, i, flags, ((void*)0));
     if (fs == ((void*)0)) {
  D("missing sched for flowset %d", i);
         break;
     }

     if (nfs->sched_nr == 0)
  nfs->sched_nr = fs->fs.sched_nr;
     for (j = 0; j < sizeof(nfs->par)/sizeof(nfs->par[0]); j++) {
  if (nfs->par[j] == -1)
      nfs->par[j] = fs->fs.par[j];
     }
     if (bcmp(&fs->fs, nfs, sizeof(*nfs)) == 0) {
  ND("flowset %d unchanged", i);
  break;
     }
     if (oldc != dn_cfg.fsk_count)
  dn_cfg.id++;
     s = locate_scheduler(nfs->sched_nr);




     DX(2, "fs %d changed sched %d@%p to %d@%p",
  fs->fs.fs_nr,
  fs->fs.sched_nr, fs->sched, nfs->sched_nr, s);
     if (fs->sched) {
  int flags = s ? DN_DETACH : (DN_DETACH | DN_DESTROY);
  flags |= DN_DESTROY;
  fsk_detach(fs, flags);
     }
     fs->fs = *nfs;






     if (s != ((void*)0))
  fsk_attach(fs, s);
 } while (0);
 if (!locked)
  DN_BH_WUNLOCK();




 return fs;
}
