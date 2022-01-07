
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_s {scalar_t__ fwsectors; scalar_t__ fwheads; int flags; int mediasize; int sectorsize; int indir; int uma; int name; } ;
struct md_req {int md_options; scalar_t__ md_sectorsize; scalar_t__ md_fwsectors; scalar_t__ md_fwheads; } ;
typedef int off_t ;


 int EINVAL ;
 int ENOMEM ;
 int MD_AUTOUNIT ;
 int MD_COMPRESS ;
 int MD_FORCE ;
 int MD_RESERVE ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int dimension (int) ;
 scalar_t__ md_malloc_wait ;
 int powerof2 (scalar_t__) ;
 int s_write (int ,int,uintptr_t) ;
 scalar_t__ uma_zalloc (int ,int) ;
 int uma_zcreate (int ,int,int *,int *,int *,int *,int,int ) ;

__attribute__((used)) static int
mdcreate_malloc(struct md_s *sc, struct md_req *mdr)
{
 uintptr_t sp;
 int error;
 off_t u;

 error = 0;
 if (mdr->md_options & ~(MD_AUTOUNIT | MD_COMPRESS | MD_RESERVE))
  return (EINVAL);
 if (mdr->md_sectorsize != 0 && !powerof2(mdr->md_sectorsize))
  return (EINVAL);

 if (mdr->md_options & MD_RESERVE)
  mdr->md_options &= ~MD_COMPRESS;
 if (mdr->md_fwsectors != 0)
  sc->fwsectors = mdr->md_fwsectors;
 if (mdr->md_fwheads != 0)
  sc->fwheads = mdr->md_fwheads;
 sc->flags = mdr->md_options & (MD_COMPRESS | MD_FORCE);
 sc->indir = dimension(sc->mediasize / sc->sectorsize);
 sc->uma = uma_zcreate(sc->name, sc->sectorsize, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     0x1ff, 0);
 if (mdr->md_options & MD_RESERVE) {
  off_t nsectors;

  nsectors = sc->mediasize / sc->sectorsize;
  for (u = 0; u < nsectors; u++) {
   sp = (uintptr_t)uma_zalloc(sc->uma, (md_malloc_wait ?
       M_WAITOK : M_NOWAIT) | M_ZERO);
   if (sp != 0)
    error = s_write(sc->indir, u, sp);
   else
    error = ENOMEM;
   if (error != 0)
    break;
  }
 }
 return (error);
}
