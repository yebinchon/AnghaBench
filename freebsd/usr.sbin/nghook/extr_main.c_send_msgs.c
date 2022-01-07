
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {size_t sl_cur; int * sl_str; } ;


 int EX_OSERR ;
 int NgSendAsciiMsg (int,char const*,char*,int ) ;
 int err (int ,char*,int ) ;
 TYPE_1__* msgs ;

__attribute__((used)) static void
send_msgs(int cs, const char *path)
{
 u_int i;

 for (i = 0; i < msgs->sl_cur; i++)
  if (NgSendAsciiMsg(cs, path, "%s", msgs->sl_str[i]) == -1)
   err(EX_OSERR, "sending message '%s'", msgs->sl_str[i]);
}
