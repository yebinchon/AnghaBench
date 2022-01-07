
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_font {int vf_refcount; } ;


 int refcount_acquire (int *) ;

struct vt_font *
vtfont_ref(struct vt_font *vf)
{

 refcount_acquire(&vf->vf_refcount);
 return (vf);
}
