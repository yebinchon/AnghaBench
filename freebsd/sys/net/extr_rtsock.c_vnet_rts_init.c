
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nh_qlimit; } ;


 scalar_t__ IS_DEFAULT_VNET (int ) ;
 scalar_t__ TUNABLE_INT_FETCH (char*,int*) ;
 int curvnet ;
 int netisr_register (TYPE_1__*) ;
 int netisr_register_vnet (TYPE_1__*) ;
 TYPE_1__ rtsock_nh ;

__attribute__((used)) static void
vnet_rts_init(void)
{
 int tmp;

 if (IS_DEFAULT_VNET(curvnet)) {
  if (TUNABLE_INT_FETCH("net.route.netisr_maxqlen", &tmp))
   rtsock_nh.nh_qlimit = tmp;
  netisr_register(&rtsock_nh);
 }




}
