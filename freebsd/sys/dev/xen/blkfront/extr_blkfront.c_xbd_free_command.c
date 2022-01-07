
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_command {int cm_flags; int cm_sc; int * cm_complete; int * cm_bp; } ;


 int KASSERT (int,char*) ;
 int XBDCF_INITIALIZER ;
 int XBDCF_Q_MASK ;
 int XBDF_CM_SHORTAGE ;
 int XBD_Q_FREE ;
 int XBD_Q_NONE ;
 int xbd_enqueue_cm (struct xbd_command*,int ) ;
 int xbd_thaw (int ,int ) ;

__attribute__((used)) static void
xbd_free_command(struct xbd_command *cm)
{

 KASSERT((cm->cm_flags & XBDCF_Q_MASK) == XBD_Q_NONE,
     ("Freeing command that is still on queue %d.",
     cm->cm_flags & XBDCF_Q_MASK));

 cm->cm_flags = XBDCF_INITIALIZER;
 cm->cm_bp = ((void*)0);
 cm->cm_complete = ((void*)0);
 xbd_enqueue_cm(cm, XBD_Q_FREE);
 xbd_thaw(cm->cm_sc, XBDF_CM_SHORTAGE);
}
