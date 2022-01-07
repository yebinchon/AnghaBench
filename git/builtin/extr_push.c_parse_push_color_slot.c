
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PUSH_COLOR_ERROR ;
 int PUSH_COLOR_RESET ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_push_color_slot(const char *slot)
{
 if (!strcasecmp(slot, "reset"))
  return PUSH_COLOR_RESET;
 if (!strcasecmp(slot, "error"))
  return PUSH_COLOR_ERROR;
 return -1;
}
