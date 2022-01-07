
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_s {scalar_t__ sectorsize; scalar_t__ mediasize; int flags; } ;
struct md_req {int md_options; scalar_t__ md_mediasize; int md_unit; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int MD_FORCE ;
 int MD_RESERVE ;
 int SA_XLOCKED ;
 int md_sx ;
 struct md_s* mdfind (int ) ;
 int mdresize (struct md_s*,struct md_req*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
kern_mdresize_locked(struct md_req *mdr)
{
 struct md_s *sc;

 sx_assert(&md_sx, SA_XLOCKED);

 if ((mdr->md_options & ~(MD_FORCE | MD_RESERVE)) != 0)
  return (EINVAL);

 sc = mdfind(mdr->md_unit);
 if (sc == ((void*)0))
  return (ENOENT);
 if (mdr->md_mediasize < sc->sectorsize)
  return (EINVAL);
 if (mdr->md_mediasize < sc->mediasize &&
     !(sc->flags & MD_FORCE) &&
     !(mdr->md_options & MD_FORCE))
  return (EBUSY);
 return (mdresize(sc, mdr));
}
