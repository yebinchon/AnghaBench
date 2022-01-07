
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_msg {int * params; } ;




 int RB_POWEROFF ;
 int RB_REROOT ;
 int be64toh (int ) ;
 int shutdown_nice (int) ;

__attribute__((used)) static void
opal_handle_shutdown_message(void *unused, struct opal_msg *msg)
{
 int howto;

 switch (be64toh(msg->params[0])) {
 case 129:
  howto = RB_POWEROFF;
  break;
 case 128:
  howto = RB_REROOT;
  break;
 }
 shutdown_nice(howto);
}
