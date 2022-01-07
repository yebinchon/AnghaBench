
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int val; int name; } ;


 int LOG_ERR ;
 TYPE_1__* bridge_pf_sysctl ;
 int bridge_sysctl ;
 size_t nitems (TYPE_1__*) ;
 int syslog (int ,char*,int ,int ,int ) ;

void
bridge_pf_dump(void)
{
 uint8_t i;

 for (i = 0; i < nitems(bridge_pf_sysctl); i++) {
  syslog(LOG_ERR, "%s%s = %d", bridge_sysctl,
      bridge_pf_sysctl[i].name, bridge_pf_sysctl[i].val);
 }
}
