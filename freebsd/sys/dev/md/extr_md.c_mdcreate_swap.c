
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_ooffset_t ;
struct thread {int td_ucred; } ;
struct md_s {int mediasize; scalar_t__ fwsectors; scalar_t__ fwheads; int flags; int * object; } ;
struct md_req {int md_options; int md_mediasize; scalar_t__ md_fwsectors; scalar_t__ md_fwheads; } ;


 int EDOM ;
 int EINVAL ;
 int ENOMEM ;
 int MD_FORCE ;
 int MD_RESERVE ;
 int MD_VERIFY ;
 int OBJT_SWAP ;
 int PAGE_SIZE ;
 int VM_PROT_DEFAULT ;
 int mdsetcred (struct md_s*,int ) ;
 scalar_t__ swap_pager_reserve (int *,int ,int) ;
 int vm_object_deallocate (int *) ;
 int * vm_pager_allocate (int ,int *,int,int ,int ,int ) ;

__attribute__((used)) static int
mdcreate_swap(struct md_s *sc, struct md_req *mdr, struct thread *td)
{
 vm_ooffset_t npage;
 int error;





 if (sc->mediasize <= 0 || (sc->mediasize % PAGE_SIZE) != 0)
  return (EDOM);







 if ((mdr->md_options & MD_VERIFY) != 0)
  return (EINVAL);
 npage = mdr->md_mediasize / PAGE_SIZE;
 if (mdr->md_fwsectors != 0)
  sc->fwsectors = mdr->md_fwsectors;
 if (mdr->md_fwheads != 0)
  sc->fwheads = mdr->md_fwheads;
 sc->object = vm_pager_allocate(OBJT_SWAP, ((void*)0), PAGE_SIZE * npage,
     VM_PROT_DEFAULT, 0, td->td_ucred);
 if (sc->object == ((void*)0))
  return (ENOMEM);
 sc->flags = mdr->md_options & (MD_FORCE | MD_RESERVE);
 if (mdr->md_options & MD_RESERVE) {
  if (swap_pager_reserve(sc->object, 0, npage) < 0) {
   error = EDOM;
   goto finish;
  }
 }
 error = mdsetcred(sc, td->td_ucred);
 finish:
 if (error != 0) {
  vm_object_deallocate(sc->object);
  sc->object = ((void*)0);
 }
 return (error);
}
