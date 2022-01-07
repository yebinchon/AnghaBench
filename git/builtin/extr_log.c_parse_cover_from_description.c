
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cover_from_description { ____Placeholder_cover_from_description } cover_from_description ;


 int COVER_FROM_AUTO ;
 int COVER_FROM_MESSAGE ;
 int COVER_FROM_NONE ;
 int COVER_FROM_SUBJECT ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum cover_from_description parse_cover_from_description(const char *arg)
{
 if (!arg || !strcmp(arg, "default"))
  return COVER_FROM_MESSAGE;
 else if (!strcmp(arg, "none"))
  return COVER_FROM_NONE;
 else if (!strcmp(arg, "message"))
  return COVER_FROM_MESSAGE;
 else if (!strcmp(arg, "subject"))
  return COVER_FROM_SUBJECT;
 else if (!strcmp(arg, "auto"))
  return COVER_FROM_AUTO;
 else
  die(_("%s: invalid cover from description mode"), arg);
}
