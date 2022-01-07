
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_msg {int params; } ;
struct opal_hmi_event {int severity; int type; scalar_t__ disposition; int pir; int hmer; } ;
typedef int evt ;


 scalar_t__ HMI_DISP_NOT_RECOVERED ;
 int memcpy (struct opal_hmi_event*,int *,int) ;
 int panic (char*,int ) ;
 int printf (char*,int,int,int ) ;

__attribute__((used)) static void
opal_hmi_event_handler(void *unused, struct opal_msg *msg)
{
 struct opal_hmi_event evt;

 memcpy(&evt, &msg->params, sizeof(evt));
 printf("Hypervisor Maintenance Event received"
     "(Severity %d, type %d, HMER: %016lx).\n",
     evt.severity, evt.type, evt.hmer);

 if (evt.disposition == HMI_DISP_NOT_RECOVERED)
  panic("Unrecoverable hypervisor maintenance exception on CPU %d",
      evt.pir);

 return;
}
