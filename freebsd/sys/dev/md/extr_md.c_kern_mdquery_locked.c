
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_s {scalar_t__ type; int file; int label; int sectorsize; int mediasize; int flags; } ;
struct md_req {scalar_t__ md_type; int * md_file; int * md_label; int md_sectorsize; int md_mediasize; int md_options; int md_unit; } ;


 int ENOENT ;
 scalar_t__ MD_PRELOAD ;
 scalar_t__ MD_VNODE ;
 int SA_XLOCKED ;
 int copyout (int ,int *,scalar_t__) ;
 int md_sx ;
 struct md_s* mdfind (int ) ;
 scalar_t__ strlen (int ) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
kern_mdquery_locked(struct md_req *mdr)
{
 struct md_s *sc;
 int error;

 sx_assert(&md_sx, SA_XLOCKED);

 sc = mdfind(mdr->md_unit);
 if (sc == ((void*)0))
  return (ENOENT);
 mdr->md_type = sc->type;
 mdr->md_options = sc->flags;
 mdr->md_mediasize = sc->mediasize;
 mdr->md_sectorsize = sc->sectorsize;
 error = 0;
 if (mdr->md_label != ((void*)0)) {
  error = copyout(sc->label, mdr->md_label,
      strlen(sc->label) + 1);
  if (error != 0)
   return (error);
 }
 if (sc->type == MD_VNODE ||
     (sc->type == MD_PRELOAD && mdr->md_file != ((void*)0)))
  error = copyout(sc->file, mdr->md_file,
      strlen(sc->file) + 1);
 return (error);
}
