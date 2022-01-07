
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int printf (char*) ;
 int t4_tom_mod_load () ;
 int t4_tom_mod_unload () ;

__attribute__((used)) static int
t4_tom_modevent(module_t mod, int cmd, void *arg)
{
 int rc = 0;
 printf("t4_tom: compiled without TCP_OFFLOAD support.\n");
 rc = EOPNOTSUPP;

 return (rc);
}
