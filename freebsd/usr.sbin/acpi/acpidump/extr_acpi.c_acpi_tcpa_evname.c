
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCPApc_event {size_t event_id; } ;
struct TCPAevent {int event_type; int event_size; } ;
 size_t* TCPA_pcclient_strings ;

 int asprintf (char**,char*,size_t) ;
 char* calloc (int ,int) ;
 int memcpy (char*,struct TCPApc_event*,int ) ;
 size_t* tcpa_event_type_strings ;

__attribute__((used)) static char *
acpi_tcpa_evname(struct TCPAevent *event)
{
 struct TCPApc_event *pc_event;
 char *eventname = ((void*)0);

 pc_event = (struct TCPApc_event *)(event + 1);

 switch(event->event_type) {
 case 136:
 case 138:
 case 128:
 case 145:
 case 133:
 case 135:
 case 134:
 case 153:
 case 140:
 case 129:
 case 154:
 case 150:
 case 149:
 case 148:
 case 147:
 case 146:
  asprintf(&eventname, "%s",
      tcpa_event_type_strings[event->event_type]);
  break;

 case 157:
  eventname = calloc(event->event_size + 1, sizeof(char));
  memcpy(eventname, pc_event, event->event_size);
  break;

 case 151:
  switch (pc_event->event_id) {
  case 132:
  case 156:
  case 155:
  case 144:
  case 142:
  case 143:
  case 130:
  case 139:
  case 152:
  case 141:
  case 131:
  case 137:
   asprintf(&eventname, "%s",
       TCPA_pcclient_strings[pc_event->event_id]);
   break;

  default:
   asprintf(&eventname, "<unknown tag 0x%02x>",
       pc_event->event_id);
   break;
  }
  break;

 default:
  asprintf(&eventname, "<unknown 0x%02x>", event->event_type);
  break;
 }

 return eventname;
}
