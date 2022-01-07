
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scope6_id {int dummy; } ;


 int M_IFADDR ;
 int free (struct scope6_id*,int ) ;

void
scope6_ifdetach(struct scope6_id *sid)
{

 free(sid, M_IFADDR);
}
