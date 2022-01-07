
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_3__ {scalar_t__ sp_space_throttled; } ;
typedef TYPE_1__ SVCPOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool_t
svc_request_space_available(SVCPOOL *pool)
{

 if (pool->sp_space_throttled)
  return (FALSE);
 return (TRUE);
}
