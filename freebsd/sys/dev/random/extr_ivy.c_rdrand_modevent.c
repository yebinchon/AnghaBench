
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_4__ {char* rs_ident; } ;


 int EOPNOTSUPP ;



 int has_rdrand ;
 int has_rdseed ;
 int printf (char*,char*) ;
 TYPE_1__ random_ivy ;
 int random_source_deregister (TYPE_1__*) ;
 int random_source_register (TYPE_1__*) ;

__attribute__((used)) static int
rdrand_modevent(module_t mod, int type, void *unused)
{
 int error = 0;

 switch (type) {
 case 130:
  if (has_rdrand || has_rdseed) {
   random_source_register(&random_ivy);
   printf("random: fast provider: \"%s\"\n", random_ivy.rs_ident);
  }
  break;

 case 128:
  if (has_rdrand || has_rdseed)
   random_source_deregister(&random_ivy);
  break;

 case 129:
  break;

 default:
  error = EOPNOTSUPP;
  break;

 }

 return (error);
}
