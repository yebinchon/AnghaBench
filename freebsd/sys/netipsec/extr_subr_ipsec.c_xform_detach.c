
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xformsw {int xf_cntr; } ;


 int IPSEC_MODULE_ENABLED ;
 int LIST_REMOVE (struct xformsw*,int ) ;
 int XFORMS_LOCK () ;
 int XFORMS_UNLOCK () ;
 int chain ;
 int ipsec_kmod_drain (int*) ;
 int key_delete_xform (struct xformsw*) ;

void
xform_detach(void *data)
{
 struct xformsw *xsp = (struct xformsw *)data;

 XFORMS_LOCK();
 LIST_REMOVE(xsp, chain);
 XFORMS_UNLOCK();


 key_delete_xform(xsp);
 if (xsp->xf_cntr & IPSEC_MODULE_ENABLED)
  ipsec_kmod_drain(&xsp->xf_cntr);
}
