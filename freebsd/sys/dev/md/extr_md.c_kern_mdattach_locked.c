
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct md_s {int unit; unsigned int mediasize; unsigned int sectorsize; int type; int start; int label; } ;
struct md_req {unsigned int md_sectorsize; unsigned int md_mediasize; int md_options; int md_unit; int * md_label; int md_type; } ;


 unsigned int DEV_BSIZE ;
 int EDOOFUS ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int INT_MAX ;
 unsigned int MAXPHYS ;
 int MD_AUTOUNIT ;





 int SA_XLOCKED ;
 int copyinstr (int *,int ,int,int *) ;
 int md_sx ;
 int mdcreate_malloc (struct md_s*,struct md_req*) ;
 int mdcreate_null (struct md_s*,struct md_req*,struct thread*) ;
 int mdcreate_swap (struct md_s*,struct md_req*,struct thread*) ;
 int mdcreate_vnode (struct md_s*,struct md_req*,struct thread*) ;
 int mddestroy (struct md_s*,struct thread*) ;
 int mdinit (struct md_s*) ;
 struct md_s* mdnew (int,int*,int ) ;
 int mdstart_malloc ;
 int mdstart_null ;
 int mdstart_swap ;
 int mdstart_vnode ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
kern_mdattach_locked(struct thread *td, struct md_req *mdr)
{
 struct md_s *sc;
 unsigned sectsize;
 int error, i;

 sx_assert(&md_sx, SA_XLOCKED);

 switch (mdr->md_type) {
 case 132:
 case 130:
 case 128:
 case 129:
 case 131:
  break;
 default:
  return (EINVAL);
 }
 if (mdr->md_sectorsize == 0)
  sectsize = DEV_BSIZE;
 else
  sectsize = mdr->md_sectorsize;
 if (sectsize > MAXPHYS || mdr->md_mediasize < sectsize)
  return (EINVAL);
 if (mdr->md_options & MD_AUTOUNIT)
  sc = mdnew(-1, &error, mdr->md_type);
 else {
  if (mdr->md_unit > INT_MAX)
   return (EINVAL);
  sc = mdnew(mdr->md_unit, &error, mdr->md_type);
 }
 if (sc == ((void*)0))
  return (error);
 if (mdr->md_label != ((void*)0))
  error = copyinstr(mdr->md_label, sc->label,
      sizeof(sc->label), ((void*)0));
 if (error != 0)
  goto err_after_new;
 if (mdr->md_options & MD_AUTOUNIT)
  mdr->md_unit = sc->unit;
 sc->mediasize = mdr->md_mediasize;
 sc->sectorsize = sectsize;
 error = EDOOFUS;
 switch (sc->type) {
 case 132:
  sc->start = mdstart_malloc;
  error = mdcreate_malloc(sc, mdr);
  break;
 case 130:





  error = EOPNOTSUPP;
  break;
 case 128:
  sc->start = mdstart_vnode;
  error = mdcreate_vnode(sc, mdr, td);
  break;
 case 129:
  sc->start = mdstart_swap;
  error = mdcreate_swap(sc, mdr, td);
  break;
 case 131:
  sc->start = mdstart_null;
  error = mdcreate_null(sc, mdr, td);
  break;
 }
err_after_new:
 if (error != 0) {
  mddestroy(sc, td);
  return (error);
 }


 i = sc->mediasize % sc->sectorsize;
 sc->mediasize -= i;

 mdinit(sc);
 return (0);
}
