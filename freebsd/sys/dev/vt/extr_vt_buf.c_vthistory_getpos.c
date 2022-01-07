
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_buf {unsigned int vb_roffset; } ;



void
vthistory_getpos(const struct vt_buf *vb, unsigned int *offset)
{

 *offset = vb->vb_roffset;
}
