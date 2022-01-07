
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int kgss_install_mech (int *,char*,int *) ;
 int kgss_uninstall_mech (int *) ;
 int krb5_class ;
 int krb5_mech_oid ;

__attribute__((used)) static int
kgssapi_krb5_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  kgss_install_mech(&krb5_mech_oid, "kerberosv5", &krb5_class);
  break;

 case 128:
  kgss_uninstall_mech(&krb5_mech_oid);
  break;
 }


 return (0);
}
