
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOOKUP_CONFIG (int ,char const*) ;
 int WT_STATUS_UPDATED ;
 int color_status_slots ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_status_slot(const char *slot)
{
 if (!strcasecmp(slot, "added"))
  return WT_STATUS_UPDATED;

 return LOOKUP_CONFIG(color_status_slots, slot);
}
