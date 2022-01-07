
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PQI_EVENT_AIO_CONFIG_CHANGE ;
 int PQI_EVENT_AIO_STATE_CHANGE ;
 int PQI_EVENT_HARDWARE ;
 int PQI_EVENT_HOTPLUG ;
 int PQI_EVENT_LOGICAL_DEVICE ;
 int PQI_EVENT_PHYSICAL_DEVICE ;







__attribute__((used)) static int
pqisrc_event_type_to_event_index(unsigned event_type)
{
 int index;

 switch (event_type) {
 case 130:
  index = PQI_EVENT_HOTPLUG;
  break;
 case 131:
  index = PQI_EVENT_HARDWARE;
  break;
 case 128:
  index = PQI_EVENT_PHYSICAL_DEVICE;
  break;
 case 129:
  index = PQI_EVENT_LOGICAL_DEVICE;
  break;
 case 132:
  index = PQI_EVENT_AIO_STATE_CHANGE;
  break;
 case 133:
  index = PQI_EVENT_AIO_CONFIG_CHANGE;
  break;
 default:
  index = -1;
  break;
 }

 return index;
}
