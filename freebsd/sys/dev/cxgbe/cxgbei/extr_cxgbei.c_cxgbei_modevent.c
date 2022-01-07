
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int cxgbei_mod_load () ;
 int cxgbei_mod_unload () ;
 int icl_cxgbei_mod_load () ;
 int icl_cxgbei_mod_unload () ;
 int printf (char*) ;

__attribute__((used)) static int
cxgbei_modevent(module_t mod, int cmd, void *arg)
{
 int rc = 0;
 printf("cxgbei: compiled without TCP_OFFLOAD support.\n");
 rc = EOPNOTSUPP;


 return (rc);
}
