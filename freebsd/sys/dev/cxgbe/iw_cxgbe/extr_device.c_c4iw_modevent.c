
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int c4iw_mod_load () ;
 int c4iw_mod_unload () ;
 int printf (char*) ;

__attribute__((used)) static int
c4iw_modevent(module_t mod, int cmd, void *arg)
{
 int rc = 0;
 printf("t4_tom: compiled without TCP_OFFLOAD support.\n");
 rc = EOPNOTSUPP;

 return (rc);
}
