
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_buf {int dummy; } ;


 int VTBUF_LOCK (struct vt_buf*) ;

void
vtbuf_lock(struct vt_buf *vb)
{

 VTBUF_LOCK(vb);
}
