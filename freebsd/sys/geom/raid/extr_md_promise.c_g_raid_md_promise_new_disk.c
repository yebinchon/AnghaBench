
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct promise_raid_conf {scalar_t__ generation; int volume_id; int array_number; } ;
struct g_raid_volume {struct g_raid_md_promise_pervolume* v_md_data; } ;
struct g_raid_softc {struct g_raid_md_object* sc_md; } ;
struct g_raid_md_promise_pervolume {scalar_t__ pv_generation; int pv_disks_present; TYPE_1__* pv_meta; scalar_t__ pv_started; int pv_start_co; int pv_id; } ;
struct g_raid_md_promise_perdisk {int pd_subdisks; struct promise_raid_conf** pd_meta; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_disk {scalar_t__ d_md_data; struct g_raid_softc* d_softc; } ;
typedef scalar_t__ int16_t ;
struct TYPE_3__ {scalar_t__ generation; int total_disks; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,...) ;
 int G_RAID_DISK_S_SPARE ;
 int M_MD_PROMISE ;
 int M_WAITOK ;
 int M_ZERO ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct g_raid_volume*) ;
 int free (TYPE_1__*,int ) ;
 int g_raid_change_disk_state (struct g_raid_disk*,int ) ;
 struct g_raid_volume* g_raid_create_volume (struct g_raid_softc*,char*,int ) ;
 struct g_raid_volume* g_raid_md_promise_get_volume (struct g_raid_softc*,int ) ;
 int g_raid_md_promise_refill (struct g_raid_softc*) ;
 int g_raid_md_promise_start (struct g_raid_volume*) ;
 scalar_t__ g_raid_md_promise_start_disk (struct g_raid_disk*,int,struct g_raid_volume*) ;
 int g_raid_md_write_promise (struct g_raid_md_object*,struct g_raid_volume*,int *,int *) ;
 int g_raid_promise_go ;
 int g_raid_start_timeout ;
 int hz ;
 struct g_raid_md_promise_pervolume* malloc (int,int ,int) ;
 TYPE_1__* promise_meta_copy (struct promise_raid_conf*) ;
 int promise_meta_get_name (struct promise_raid_conf*,char*) ;

__attribute__((used)) static void
g_raid_md_promise_new_disk(struct g_raid_disk *disk)
{
 struct g_raid_softc *sc;
 struct g_raid_md_object *md;
 struct promise_raid_conf *pdmeta;
 struct g_raid_md_promise_perdisk *pd;
 struct g_raid_md_promise_pervolume *pv;
 struct g_raid_volume *vol;
 int i;
 char buf[33];

 sc = disk->d_softc;
 md = sc->sc_md;
 pd = (struct g_raid_md_promise_perdisk *)disk->d_md_data;

 if (pd->pd_subdisks == 0) {
  g_raid_change_disk_state(disk, G_RAID_DISK_S_SPARE);
  g_raid_md_promise_refill(sc);
  return;
 }

 for (i = 0; i < pd->pd_subdisks; i++) {
  pdmeta = pd->pd_meta[i];


  vol = g_raid_md_promise_get_volume(sc, pdmeta->volume_id);
  if (vol == ((void*)0)) {
   promise_meta_get_name(pdmeta, buf);
   vol = g_raid_create_volume(sc, buf, pdmeta->array_number);
   pv = malloc(sizeof(*pv), M_MD_PROMISE, M_WAITOK | M_ZERO);
   pv->pv_id = pdmeta->volume_id;
   vol->v_md_data = pv;
   callout_init(&pv->pv_start_co, 1);
   callout_reset(&pv->pv_start_co,
       g_raid_start_timeout * hz,
       g_raid_promise_go, vol);
  } else
   pv = vol->v_md_data;


  if (pv->pv_meta == ((void*)0) || !pv->pv_started) {
   if (pv->pv_meta == ((void*)0) ||
       ((int16_t)(pdmeta->generation - pv->pv_generation)) > 0) {
    G_RAID_DEBUG1(1, sc, "Newer disk");
    if (pv->pv_meta != ((void*)0))
     free(pv->pv_meta, M_MD_PROMISE);
    pv->pv_meta = promise_meta_copy(pdmeta);
    pv->pv_generation = pv->pv_meta->generation;
    pv->pv_disks_present = 1;
   } else if (pdmeta->generation == pv->pv_generation) {
    pv->pv_disks_present++;
    G_RAID_DEBUG1(1, sc, "Matching disk (%d of %d up)",
        pv->pv_disks_present,
        pv->pv_meta->total_disks);
   } else {
    G_RAID_DEBUG1(1, sc, "Older disk");
   }
  }
 }

 for (i = 0; i < pd->pd_subdisks; i++) {
  pdmeta = pd->pd_meta[i];


  vol = g_raid_md_promise_get_volume(sc, pdmeta->volume_id);
  if (vol == ((void*)0))
   continue;
  pv = vol->v_md_data;

  if (pv->pv_started) {
   if (g_raid_md_promise_start_disk(disk, i, vol))
    g_raid_md_write_promise(md, vol, ((void*)0), ((void*)0));
  } else {

   if (pv->pv_disks_present == pv->pv_meta->total_disks)
    g_raid_md_promise_start(vol);
  }
 }
}
