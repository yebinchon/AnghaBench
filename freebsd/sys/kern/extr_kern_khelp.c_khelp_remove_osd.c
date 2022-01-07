
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd {int dummy; } ;
struct helper {int h_flags; int h_refcount; int h_id; int h_zone; } ;


 int HELPER_NEEDS_OSD ;
 int OSD_KHELP ;
 int osd_del (int ,struct osd*,int ) ;
 void* osd_get (int ,struct osd*,int ) ;
 int refcount_release (int *) ;
 int uma_zfree (int ,void*) ;

__attribute__((used)) static inline void
khelp_remove_osd(struct helper *h, struct osd *hosd)
{
 void *hdata;

 if (h->h_flags & HELPER_NEEDS_OSD) {





  hdata = osd_get(OSD_KHELP, hosd, h->h_id);
  if (hdata != ((void*)0)) {
   uma_zfree(h->h_zone, hdata);
   osd_del(OSD_KHELP, hosd, h->h_id);
   refcount_release(&h->h_refcount);
  }
 }
}
