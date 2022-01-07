
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_command {int dummy; } ;


 int XBD_Q_COMPLETE ;
 int xbd_enqueue_cm (struct xbd_command*,int ) ;

__attribute__((used)) static void
xbd_dump_complete(struct xbd_command *cm)
{

 xbd_enqueue_cm(cm, XBD_Q_COMPLETE);
}
