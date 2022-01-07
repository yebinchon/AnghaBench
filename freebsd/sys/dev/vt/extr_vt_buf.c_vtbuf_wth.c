
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_buf {int vb_roffset; int vb_history_size; } ;



__attribute__((used)) static int
vtbuf_wth(const struct vt_buf *vb, int row)
{

 return ((vb->vb_roffset + row) % vb->vb_history_size);
}
