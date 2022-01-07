
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_3__ {int nh_qlimit; } ;


 int EOPNOTSUPP ;


 int TUNABLE_INT_FETCH (char*,int*) ;
 int bootverbose ;
 int epair_dpcpu_init () ;
 TYPE_1__ epair_nh ;
 char* epairname ;
 int ifqmaxlen ;
 int netisr_register (TYPE_1__*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
epair_modevent(module_t mod, int type, void *data)
{
 int qlimit;

 switch (type) {
 case 129:

  epair_dpcpu_init();
  epair_nh.nh_qlimit = 42 * ifqmaxlen;
  if (TUNABLE_INT_FETCH("net.link.epair.netisr_maxqlen", &qlimit))
      epair_nh.nh_qlimit = qlimit;
  netisr_register(&epair_nh);
  if (bootverbose)
   printf("%s initialized.\n", epairname);
  break;
 case 128:

  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
