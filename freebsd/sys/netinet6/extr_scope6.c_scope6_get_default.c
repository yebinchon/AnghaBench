
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scope6_id {int dummy; } ;


 int SCOPE6_LOCK () ;
 int SCOPE6_UNLOCK () ;
 struct scope6_id V_sid_default ;

int
scope6_get_default(struct scope6_id *idlist)
{

 SCOPE6_LOCK();
 *idlist = V_sid_default;
 SCOPE6_UNLOCK();

 return (0);
}
