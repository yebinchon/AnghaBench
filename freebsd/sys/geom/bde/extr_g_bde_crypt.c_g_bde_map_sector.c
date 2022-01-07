
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef size_t u_int ;
struct g_bde_work {size_t offset; size_t ko; size_t length; size_t so; size_t kso; struct g_bde_softc* softc; } ;
struct g_bde_key {size_t zone_cont; size_t sectorsize; size_t zone_width; size_t media_width; size_t sector0; size_t sectorN; int * lsector; scalar_t__ keyoffset; } ;
struct g_bde_softc {struct g_bde_key key; } ;
typedef int intmax_t ;


 size_t DFLTPHYS ;
 size_t G_BDE_MAXKEYS ;
 size_t G_BDE_SKEYLEN ;
 int KASSERT (int,char*) ;
 int printf (char*,int ,int ,int ,int ,size_t) ;
 size_t rounddown2 (int ,size_t) ;

void
g_bde_map_sector(struct g_bde_work *wp)
{

 u_int zone, zoff, u, len;
 uint64_t ko;
 struct g_bde_softc *sc;
 struct g_bde_key *kp;

 sc = wp->softc;
 kp = &sc->key;


 zone = wp->offset / kp->zone_cont;
 zoff = wp->offset % kp->zone_cont;


 wp->ko = (zoff / kp->sectorsize) * G_BDE_SKEYLEN;


 len = kp->zone_cont - zoff;


 if (len > DFLTPHYS)
  len = DFLTPHYS;

 if (len < wp->length)
  wp->length = len;


 wp->so = zone * kp->zone_width + zoff;
 wp->so += kp->keyoffset;
 wp->so %= kp->media_width;
 if (wp->so + wp->length > kp->media_width)
  wp->length = kp->media_width - wp->so;
 wp->so += kp->sector0;


 wp->kso = zone * kp->zone_width + kp->zone_cont;
 wp->kso += kp->keyoffset;
 wp->kso %= kp->media_width;
 wp->kso += kp->sector0;


 for (u = 0; u < G_BDE_MAXKEYS; u++) {

  ko = rounddown2(kp->lsector[u], (uint64_t)kp->sectorsize);

  if (wp->kso >= ko)
   wp->kso += kp->sectorsize;

  if (wp->so >= ko) {

   wp->so += kp->sectorsize;
  } else if ((wp->so + wp->length) > ko) {

   wp->length = ko - wp->so;
  }
 }
 KASSERT(wp->so + wp->length <= kp->sectorN,
     ("wp->so (%jd) + wp->length (%jd) > EOM (%jd), offset = %jd",
     (intmax_t)wp->so,
     (intmax_t)wp->length,
     (intmax_t)kp->sectorN,
     (intmax_t)wp->offset));

 KASSERT(wp->kso + kp->sectorsize <= kp->sectorN,
     ("wp->kso (%jd) + kp->sectorsize > EOM (%jd), offset = %jd",
     (intmax_t)wp->kso,
     (intmax_t)kp->sectorN,
     (intmax_t)wp->offset));

 KASSERT(wp->so >= kp->sector0,
     ("wp->so (%jd) < BOM (%jd), offset = %jd",
     (intmax_t)wp->so,
     (intmax_t)kp->sector0,
     (intmax_t)wp->offset));

 KASSERT(wp->kso >= kp->sector0,
     ("wp->kso (%jd) <BOM (%jd), offset = %jd",
     (intmax_t)wp->kso,
     (intmax_t)kp->sector0,
     (intmax_t)wp->offset));
}
