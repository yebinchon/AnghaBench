
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct nfscllayout {int nfsly_flayrw; int nfsly_flayread; } ;
struct nfsclflayout {scalar_t__ nfsfl_off; scalar_t__ nfsfl_end; } ;


 int EIO ;
 struct nfsclflayout* LIST_FIRST (int *) ;
 struct nfsclflayout* LIST_NEXT (struct nfsclflayout*,int ) ;
 scalar_t__ NFSV4OPEN_ACCESSREAD ;
 scalar_t__ NFSV4OPEN_ACCESSWRITE ;
 int nfsfl_list ;

int
nfscl_findlayoutforio(struct nfscllayout *lyp, uint64_t off, uint32_t rwaccess,
    struct nfsclflayout **retflpp)
{
 struct nfsclflayout *flp, *nflp, *rflp;
 uint32_t rw;

 rflp = ((void*)0);
 rw = rwaccess;

 do {
  if (rw == NFSV4OPEN_ACCESSREAD)
   flp = LIST_FIRST(&lyp->nfsly_flayread);
  else
   flp = LIST_FIRST(&lyp->nfsly_flayrw);
  while (flp != ((void*)0)) {
   nflp = LIST_NEXT(flp, nfsfl_list);
   if (flp->nfsfl_off > off)
    break;
   if (flp->nfsfl_end > off &&
       (rflp == ((void*)0) || rflp->nfsfl_end < flp->nfsfl_end))
    rflp = flp;
   flp = nflp;
  }
  if (rw == NFSV4OPEN_ACCESSREAD)
   rw = NFSV4OPEN_ACCESSWRITE;
  else
   rw = 0;
 } while (rw != 0);
 if (rflp != ((void*)0)) {

  *retflpp = rflp;
  return (0);
 }
 return (EIO);
}
