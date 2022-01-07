
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ streq (char const*,char*) ;

const char *
stringfix(const char *type)
{
 if (streq(type, "string")) {
  return ("wrapstring");
 } else {
  return (type);
 }
}
