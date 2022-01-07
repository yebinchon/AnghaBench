
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nvme_status_string {int sc; char const* str; } ;







 struct nvme_status_string* command_specific_status ;
 struct nvme_status_string* generic_status ;
 struct nvme_status_string* media_error_status ;
 struct nvme_status_string* path_related_status ;

__attribute__((used)) static const char *
get_status_string(uint16_t sct, uint16_t sc)
{
 struct nvme_status_string *entry;

 switch (sct) {
 case 131:
  entry = generic_status;
  break;
 case 132:
  entry = command_specific_status;
  break;
 case 130:
  entry = media_error_status;
  break;
 case 129:
  entry = path_related_status;
  break;
 case 128:
  return ("VENDOR SPECIFIC");
 default:
  return ("RESERVED");
 }

 while (entry->sc != 0xFFFF) {
  if (entry->sc == sc)
   return (entry->str);
  entry++;
 }
 return (entry->str);
}
