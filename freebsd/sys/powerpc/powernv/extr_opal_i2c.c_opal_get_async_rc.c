
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_msg {scalar_t__ msg_type; int * params; } ;


 scalar_t__ OPAL_MSG_ASYNC_COMP ;
 int OPAL_PARAMETER ;
 int htobe64 (int ) ;

__attribute__((used)) static int
opal_get_async_rc(struct opal_msg msg)
{
 if (msg.msg_type != OPAL_MSG_ASYNC_COMP)
  return OPAL_PARAMETER;
 else
  return htobe64(msg.params[1]);
}
