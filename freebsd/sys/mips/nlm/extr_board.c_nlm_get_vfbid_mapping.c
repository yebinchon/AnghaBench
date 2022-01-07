
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfbid_tbl {int vfbid; int dest_vc; } ;


 int nitems (struct vfbid_tbl*) ;
 struct vfbid_tbl* nlm3xx_vfbid ;
 scalar_t__ nlm_is_xlp3xx () ;
 struct vfbid_tbl* nlm_vfbid ;

int
nlm_get_vfbid_mapping(int vfbid)
{
 int i, nentries;
 struct vfbid_tbl *p;

 if (nlm_is_xlp3xx()) {
  nentries = nitems(nlm3xx_vfbid);
  p = nlm3xx_vfbid;
 } else {
  nentries = nitems(nlm_vfbid);
  p = nlm_vfbid;
 }

 for (i = 0; i < nentries; i++) {
  if (p[i].vfbid == vfbid)
      return (p[i].dest_vc);
 }

 return (-1);
}
