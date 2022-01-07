
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicyindex {int dummy; } ;
struct secpolicy {int dummy; } ;
struct inpcb {int dummy; } ;


 int IPSEC_DIR_OUTBOUND ;
 struct secpolicy* ipsec_getpcbpolicy (struct inpcb*,int ) ;
 size_t ipsec_hdrsiz_internal (struct secpolicy*) ;
 int ipsec_setspidx_inpcb (struct inpcb*,struct secpolicyindex*,int ) ;
 struct secpolicy* key_allocsp (struct secpolicyindex*,int ) ;
 struct secpolicy* key_allocsp_default () ;
 int key_freesp (struct secpolicy**) ;
 scalar_t__ key_havesp (int ) ;

size_t
ipsec_hdrsiz_inpcb(struct inpcb *inp)
{
 struct secpolicyindex spidx;
 struct secpolicy *sp;
 size_t sz;

 sp = ipsec_getpcbpolicy(inp, IPSEC_DIR_OUTBOUND);
 if (sp == ((void*)0) && key_havesp(IPSEC_DIR_OUTBOUND)) {
  ipsec_setspidx_inpcb(inp, &spidx, IPSEC_DIR_OUTBOUND);
  sp = key_allocsp(&spidx, IPSEC_DIR_OUTBOUND);
 }
 if (sp == ((void*)0))
  sp = key_allocsp_default();
 sz = ipsec_hdrsiz_internal(sp);
 key_freesp(&sp);
 return (sz);
}
