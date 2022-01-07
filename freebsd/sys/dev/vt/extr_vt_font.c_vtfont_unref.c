
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_font {struct vt_font* vf_bytes; struct vt_font** vf_map; int vf_refcount; } ;


 int M_VTFONT ;
 unsigned int VFNT_MAPS ;
 int free (struct vt_font*,int ) ;
 scalar_t__ refcount_release (int *) ;

void
vtfont_unref(struct vt_font *vf)
{
 unsigned int i;

 if (refcount_release(&vf->vf_refcount)) {
  for (i = 0; i < VFNT_MAPS; i++)
   free(vf->vf_map[i], M_VTFONT);
  free(vf->vf_bytes, M_VTFONT);
  free(vf, M_VTFONT);
 }
}
