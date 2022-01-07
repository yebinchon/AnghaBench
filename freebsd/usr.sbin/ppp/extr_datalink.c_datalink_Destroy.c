
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct datalink {int state; struct datalink* name; int physical; struct datalink* next; TYPE_1__ dial; int chat; } ;


 int DATALINK_CLOSED ;



 int LogERROR ;
 int chat_Destroy (int *) ;
 int chat_Finish (int *) ;
 int datalink_State (struct datalink*) ;
 int free (struct datalink*) ;
 int log_Printf (int ,char*,int ) ;
 int physical_Destroy (int ) ;
 int timer_Stop (int *) ;

struct datalink *
datalink_Destroy(struct datalink *dl)
{
  struct datalink *result;

  if (dl->state != DATALINK_CLOSED) {
    log_Printf(LogERROR, "Oops, destroying a datalink in state %s\n",
              datalink_State(dl));
    switch (dl->state) {
      case 129:
      case 130:
      case 128:
        chat_Finish(&dl->chat);
        break;
    }
  }

  chat_Destroy(&dl->chat);
  timer_Stop(&dl->dial.timer);
  result = dl->next;
  physical_Destroy(dl->physical);
  free(dl->name);
  free(dl);

  return result;
}
