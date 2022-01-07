
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct md_s {scalar_t__ opencount; int flags; } ;
struct md_req {scalar_t__ md_mediasize; int md_options; int md_unit; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int MD_FORCE ;
 int SA_XLOCKED ;
 int md_sx ;
 int mddestroy (struct md_s*,struct thread*) ;
 struct md_s* mdfind (int ) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
kern_mddetach_locked(struct thread *td, struct md_req *mdr)
{
 struct md_s *sc;

 sx_assert(&md_sx, SA_XLOCKED);

 if (mdr->md_mediasize != 0 ||
     (mdr->md_options & ~MD_FORCE) != 0)
  return (EINVAL);

 sc = mdfind(mdr->md_unit);
 if (sc == ((void*)0))
  return (ENOENT);
 if (sc->opencount != 0 && !(sc->flags & MD_FORCE) &&
     !(mdr->md_options & MD_FORCE))
  return (EBUSY);
 return (mddestroy(sc, td));
}
