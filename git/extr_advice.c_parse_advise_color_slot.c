
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADVICE_COLOR_HINT ;
 int ADVICE_COLOR_RESET ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_advise_color_slot(const char *slot)
{
 if (!strcasecmp(slot, "reset"))
  return ADVICE_COLOR_RESET;
 if (!strcasecmp(slot, "hint"))
  return ADVICE_COLOR_HINT;
 return -1;
}
