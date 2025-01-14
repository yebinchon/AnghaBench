
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct g_raid_volume {int v_name; int v_disks_count; scalar_t__ v_raid_level; struct g_raid_subdisk* v_subdisks; struct g_raid_md_ddf_pervolume* v_md_data; } ;
struct g_raid_subdisk {scalar_t__ sd_state; int sd_size; int sd_offset; scalar_t__ sd_rebuild_pos; struct g_raid_disk* sd_disk; } ;
struct g_raid_softc {scalar_t__ sc_md; } ;
struct ddf_vol_meta {int sectorsize; TYPE_2__* vdc; int * cr; } ;
struct g_raid_md_ddf_pervolume {int pv_started; struct ddf_vol_meta pv_meta; } ;
struct g_raid_md_ddf_perdisk {struct ddf_vol_meta pd_meta; } ;
struct g_raid_md_ddf_object {struct ddf_vol_meta mdio_meta; } ;
struct g_raid_disk {scalar_t__ d_state; int d_subdisks; scalar_t__ d_md_data; struct g_raid_softc* d_softc; } ;
struct ddf_vdc_record {int Block_Count; int * Physical_Disk_Sequence; int Signature; } ;
struct ddf_sa_record {int Spare_Type; int Signature; } ;
struct ddf_meta {int sectorsize; TYPE_2__* vdc; int * cr; } ;
typedef int off_t ;
struct TYPE_14__ {int Max_Primary_Element_Entries; int Max_Partitions; } ;
struct TYPE_13__ {int PD_Reference; } ;
struct TYPE_12__ {TYPE_1__* entry; } ;
struct TYPE_11__ {int Primary_Element_Count; } ;
struct TYPE_10__ {int Init_State; int VD_State; } ;
struct TYPE_9__ {int VD_GUID; } ;
struct TYPE_8__ {int PD_State; } ;


 int DDF_PDE_FAILED ;
 int DDF_PDE_PFA ;
 int DDF_PDE_REBUILD ;
 int DDF_SAR_TYPE_ACTIVE ;
 int DDF_SAR_TYPE_REVERTIBLE ;
 int DDF_VDE_DIRTY ;
 int DDF_VDE_INIT_FULL ;
 int DDF_VDE_INIT_MASK ;
 int GET16 (struct ddf_vol_meta*,int ) ;
 int GET32 (struct ddf_vol_meta*,int ) ;
 scalar_t__ GET64D (struct ddf_vol_meta*,int ) ;
 scalar_t__ GET64P (struct ddf_vol_meta*,int *) ;
 int GET8 (struct ddf_vol_meta*,int ) ;
 int GET8D (struct ddf_vol_meta*,int ) ;
 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int ,...) ;
 int G_RAID_DISK_S_ACTIVE ;
 int G_RAID_DISK_S_FAILED ;
 scalar_t__ G_RAID_DISK_S_NONE ;
 int G_RAID_DISK_S_STALE ;
 int G_RAID_DISK_S_STALE_FAILED ;
 int G_RAID_EVENT_SUBDISK ;
 int G_RAID_SUBDISK_E_NEW ;
 scalar_t__ G_RAID_SUBDISK_S_ACTIVE ;
 scalar_t__ G_RAID_SUBDISK_S_FAILED ;
 scalar_t__ G_RAID_SUBDISK_S_NEW ;
 scalar_t__ G_RAID_SUBDISK_S_NONE ;
 scalar_t__ G_RAID_SUBDISK_S_REBUILD ;
 scalar_t__ G_RAID_SUBDISK_S_STALE ;
 scalar_t__ G_RAID_VOLUME_RL_CONCAT ;
 int INT64_MAX ;
 int SET32D (struct ddf_vol_meta*,int ,int) ;
 int SET8D (struct ddf_vol_meta*,int ,int) ;
 int TAILQ_INSERT_TAIL (int *,struct g_raid_subdisk*,int ) ;
 int TAILQ_REMOVE (int *,struct g_raid_subdisk*,int ) ;
 int ddf_meta_count_vdc (struct ddf_vol_meta*,int *) ;
 int ddf_meta_find_disk (struct ddf_vol_meta*,int ,int*,int*) ;
 int ddf_meta_find_pd (struct ddf_vol_meta*,int *,int ) ;
 struct ddf_sa_record* ddf_meta_find_sa (struct ddf_vol_meta*,int ) ;
 struct ddf_vdc_record* ddf_meta_find_vdc (struct ddf_vol_meta*,int ) ;
 int ddf_meta_unused_range (struct ddf_vol_meta*,int*,int*) ;
 int g_raid_change_disk_state (struct g_raid_disk*,int ) ;
 int g_raid_change_subdisk_state (struct g_raid_subdisk*,scalar_t__) ;
 int g_raid_event_send (struct g_raid_subdisk*,int ,int ) ;
 int g_raid_get_diskname (struct g_raid_disk*) ;
 TYPE_7__* hdr ;
 TYPE_6__* pdd ;
 TYPE_5__* pdr ;
 int sd_next ;
 TYPE_4__* vdc ;
 TYPE_3__* vde ;

__attribute__((used)) static int
g_raid_md_ddf_start_disk(struct g_raid_disk *disk, struct g_raid_volume *vol)
{
 struct g_raid_softc *sc;
 struct g_raid_subdisk *sd;
 struct g_raid_md_ddf_perdisk *pd;
 struct g_raid_md_ddf_pervolume *pv;
 struct g_raid_md_ddf_object *mdi;
 struct ddf_vol_meta *vmeta;
 struct ddf_meta *pdmeta, *gmeta;
 struct ddf_vdc_record *vdc1;
 struct ddf_sa_record *sa;
 off_t size, eoff = 0, esize = 0;
 uint64_t *val2;
 int disk_pos, md_disk_bvd = -1, md_disk_pos = -1, md_pde_pos;
 int i, resurrection = 0;
 uint32_t reference;

 sc = disk->d_softc;
 mdi = (struct g_raid_md_ddf_object *)sc->sc_md;
 pd = (struct g_raid_md_ddf_perdisk *)disk->d_md_data;
 pdmeta = &pd->pd_meta;
 reference = GET32(&pd->pd_meta, pdd->PD_Reference);

 pv = vol->v_md_data;
 vmeta = &pv->pv_meta;
 gmeta = &mdi->mdio_meta;


 disk_pos = ddf_meta_find_disk(vmeta, reference,
     &md_disk_bvd, &md_disk_pos);
 md_pde_pos = ddf_meta_find_pd(gmeta, ((void*)0), reference);

 if (disk_pos < 0) {
  G_RAID_DEBUG1(1, sc,
      "Disk %s is not a present part of the volume %s",
      g_raid_get_diskname(disk), vol->v_name);


  if ((GET16(gmeta, pdr->entry[md_pde_pos].PD_State) & DDF_PDE_PFA) != 0) {
   g_raid_change_disk_state(disk, G_RAID_DISK_S_STALE_FAILED);
   return (0);
  }


  if ((vdc1 = ddf_meta_find_vdc(pdmeta, vmeta->vdc->VD_GUID)) != ((void*)0))
   SET32D(pdmeta, vdc1->Signature, 0xffffffff);


  if (!pv->pv_started)
   goto nofit;




  if (ddf_meta_count_vdc(&pd->pd_meta, ((void*)0)) >=
   GET16(&pd->pd_meta, hdr->Max_Partitions)) {
   G_RAID_DEBUG1(1, sc, "No free partitions on disk %s",
       g_raid_get_diskname(disk));
   goto nofit;
  }
  ddf_meta_unused_range(&pd->pd_meta, &eoff, &esize);
  if (esize == 0) {
   G_RAID_DEBUG1(1, sc, "No free space on disk %s",
       g_raid_get_diskname(disk));
   goto nofit;
  }
  eoff *= pd->pd_meta.sectorsize;
  esize *= pd->pd_meta.sectorsize;
  size = INT64_MAX;
  for (i = 0; i < vol->v_disks_count; i++) {
   sd = &vol->v_subdisks[i];
   if (sd->sd_state != G_RAID_SUBDISK_S_NONE)
    size = sd->sd_size;
   if (sd->sd_state <= G_RAID_SUBDISK_S_FAILED &&
       (disk_pos < 0 ||
        vol->v_subdisks[i].sd_state < sd->sd_state))
    disk_pos = i;
  }
  if (disk_pos >= 0 &&
      vol->v_raid_level != G_RAID_VOLUME_RL_CONCAT &&
      esize < size) {
   G_RAID_DEBUG1(1, sc, "Disk %s free space "
       "is too small (%ju < %ju)",
       g_raid_get_diskname(disk), esize, size);
   disk_pos = -1;
  }
  if (disk_pos >= 0) {
   if (vol->v_raid_level != G_RAID_VOLUME_RL_CONCAT)
    esize = size;
   md_disk_bvd = disk_pos / GET16(vmeta, vdc->Primary_Element_Count);
   md_disk_pos = disk_pos % GET16(vmeta, vdc->Primary_Element_Count);
  } else {
nofit:
   if (disk->d_state == G_RAID_DISK_S_NONE)
    g_raid_change_disk_state(disk,
        G_RAID_DISK_S_STALE);
   return (0);
  }





  sa = ddf_meta_find_sa(&pd->pd_meta, 0);
  if (sa != ((void*)0)) {
   if ((GET8D(&pd->pd_meta, sa->Spare_Type) &
       DDF_SAR_TYPE_REVERTIBLE) == 0) {
    SET32D(&pd->pd_meta, sa->Signature, 0xffffffff);
   } else {
    SET8D(&pd->pd_meta, sa->Spare_Type,
        GET8D(&pd->pd_meta, sa->Spare_Type) |
        DDF_SAR_TYPE_ACTIVE);
   }
  }

  G_RAID_DEBUG1(1, sc, "Disk %s takes pos %d in the volume %s",
      g_raid_get_diskname(disk), disk_pos, vol->v_name);
  resurrection = 1;
 }

 sd = &vol->v_subdisks[disk_pos];

 if (resurrection && sd->sd_disk != ((void*)0)) {
  g_raid_change_disk_state(sd->sd_disk,
      G_RAID_DISK_S_STALE_FAILED);
  TAILQ_REMOVE(&sd->sd_disk->d_subdisks,
      sd, sd_next);
 }
 vol->v_subdisks[disk_pos].sd_disk = disk;
 TAILQ_INSERT_TAIL(&disk->d_subdisks, sd, sd_next);


 if (resurrection)
  g_raid_change_disk_state(disk, G_RAID_DISK_S_ACTIVE);
 else if (GET16(gmeta, pdr->entry[md_pde_pos].PD_State) & DDF_PDE_PFA)
  g_raid_change_disk_state(disk, G_RAID_DISK_S_FAILED);
 else
  g_raid_change_disk_state(disk, G_RAID_DISK_S_ACTIVE);

 if (resurrection) {
  sd->sd_offset = eoff;
  sd->sd_size = esize;
 } else if (pdmeta->cr != ((void*)0) &&
     (vdc1 = ddf_meta_find_vdc(pdmeta, vmeta->vdc->VD_GUID)) != ((void*)0)) {
  val2 = (uint64_t *)&(vdc1->Physical_Disk_Sequence[GET16(vmeta, hdr->Max_Primary_Element_Entries)]);
  sd->sd_offset = (off_t)GET64P(pdmeta, val2 + md_disk_pos) * 512;
  sd->sd_size = (off_t)GET64D(pdmeta, vdc1->Block_Count) * 512;
 }

 if (resurrection) {

  g_raid_change_subdisk_state(sd,
      G_RAID_SUBDISK_S_NEW);
 } else if (GET16(gmeta, pdr->entry[md_pde_pos].PD_State) & DDF_PDE_PFA) {

  g_raid_change_subdisk_state(sd,
      G_RAID_SUBDISK_S_FAILED);
 } else if ((GET16(gmeta, pdr->entry[md_pde_pos].PD_State) &
      (DDF_PDE_FAILED | DDF_PDE_REBUILD)) != 0) {

  g_raid_change_subdisk_state(sd,
      G_RAID_SUBDISK_S_REBUILD);
  sd->sd_rebuild_pos = 0;
 } else if ((GET8(vmeta, vde->VD_State) & DDF_VDE_DIRTY) != 0 ||
     (GET8(vmeta, vde->Init_State) & DDF_VDE_INIT_MASK) !=
      DDF_VDE_INIT_FULL) {

  g_raid_change_subdisk_state(sd,
      G_RAID_SUBDISK_S_STALE);
 } else {

  g_raid_change_subdisk_state(sd,
      G_RAID_SUBDISK_S_ACTIVE);
 }
 g_raid_event_send(sd, G_RAID_SUBDISK_E_NEW,
     G_RAID_EVENT_SUBDISK);

 return (resurrection);
}
