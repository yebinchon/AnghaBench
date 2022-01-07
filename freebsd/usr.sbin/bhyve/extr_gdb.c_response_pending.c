
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; int len; char* data; } ;


 TYPE_1__ cur_resp ;

__attribute__((used)) static bool
response_pending(void)
{

 if (cur_resp.start == 0 && cur_resp.len == 0)
  return (0);
 if (cur_resp.start + cur_resp.len == 1 && cur_resp.data[0] == '+')
  return (0);
 return (1);
}
