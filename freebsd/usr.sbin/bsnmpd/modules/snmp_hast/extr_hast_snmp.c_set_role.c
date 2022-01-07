
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int dummy; } ;


 int HASTCTL_CMD_SETROLE ;
 int SNMP_ERR_NOERROR ;
 int hastctl (struct nv*,struct nv**) ;
 int nv_add_string (struct nv*,char const*,char*,int ) ;
 int nv_add_uint8 (struct nv*,int,char*) ;
 struct nv* nv_alloc () ;
 int nv_free (struct nv*) ;

__attribute__((used)) static int
set_role(const char *resource, int role)
{
 struct nv *nvin, *nvout;
 int error;

 nvin = nv_alloc();
 nv_add_string(nvin, resource, "resource%d", 0);
 nv_add_uint8(nvin, HASTCTL_CMD_SETROLE, "cmd");
 nv_add_uint8(nvin, role, "role");
 error = hastctl(nvin, &nvout);
 nv_free(nvin);
 if (error != 0)
  return (-1);
 nv_free(nvout);
 return (SNMP_ERR_NOERROR);
}
