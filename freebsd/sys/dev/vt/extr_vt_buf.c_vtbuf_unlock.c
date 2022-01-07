
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_buf {int dummy; } ;


 int VTBUF_UNLOCK (struct vt_buf*) ;

void
vtbuf_unlock(struct vt_buf *vb)
{

 VTBUF_UNLOCK(vb);
}
