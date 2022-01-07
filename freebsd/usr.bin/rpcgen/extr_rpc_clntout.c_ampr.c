
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REL_ALIAS ;
 scalar_t__ isvectordef (char const*,int ) ;

__attribute__((used)) static const char *
ampr(const char *type)
{
 if (isvectordef(type, REL_ALIAS)) {
  return ("");
 } else {
  return ("&");
 }
}
