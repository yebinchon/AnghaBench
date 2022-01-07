
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_4__ {char* rs_ident; } ;


 int EOPNOTSUPP ;



 int VIA_HAS_RNG ;
 int printf (char*,char*) ;
 TYPE_1__ random_nehemiah ;
 int random_nehemiah_deinit () ;
 int random_nehemiah_init () ;
 int random_source_deregister (TYPE_1__*) ;
 int random_source_register (TYPE_1__*) ;
 int via_feature_rng ;

__attribute__((used)) static int
nehemiah_modevent(module_t mod, int type, void *unused)
{
 int error = 0;

 switch (type) {
 case 130:
  if (via_feature_rng & VIA_HAS_RNG) {
   random_source_register(&random_nehemiah);
   printf("random: fast provider: \"%s\"\n", random_nehemiah.rs_ident);
   random_nehemiah_init();
  }
  break;

 case 128:
  if (via_feature_rng & VIA_HAS_RNG) {
   random_nehemiah_deinit();
   random_source_deregister(&random_nehemiah);
  }
  break;

 case 129:
  break;

 default:
  error = EOPNOTSUPP;
  break;

 }

 return (error);
}
