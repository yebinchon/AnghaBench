
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_evt_pd {int enclosure_index; int device_id; int slot_number; } ;
typedef int buffer ;


 int snprintf (char*,int,char*,int,int,...) ;

__attribute__((used)) static const char *
pdrive_location(struct mfi_evt_pd *pd)
{
 static char buffer[16];

 if (pd->enclosure_index == 0)
  snprintf(buffer, sizeof(buffer), "%02d(s%d)", pd->device_id,
      pd->slot_number);
 else
  snprintf(buffer, sizeof(buffer), "%02d(e%d/s%d)", pd->device_id,
      pd->enclosure_index, pd->slot_number);
 return (buffer);
}
