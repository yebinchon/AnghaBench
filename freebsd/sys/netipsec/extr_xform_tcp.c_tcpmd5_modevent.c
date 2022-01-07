
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int tcpmd5_methods ;
 int tcpmd5_support_disable () ;
 int tcpmd5_support_enable (int *) ;
 int tcpsignature_xformsw ;
 int xform_attach (int *) ;
 int xform_detach (int *) ;

__attribute__((used)) static int
tcpmd5_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  xform_attach(&tcpsignature_xformsw);



  break;
 case 128:



  xform_detach(&tcpsignature_xformsw);
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
