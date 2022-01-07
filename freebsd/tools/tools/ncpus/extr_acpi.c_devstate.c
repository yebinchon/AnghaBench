
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int devinfo_state_t ;







__attribute__((used)) static const char *
devstate(devinfo_state_t state)
{
 switch (state) {
 case 128:
  return "not-present";
 case 131:
  return "alive";
 case 130:
  return "attached";
 case 129:
  return "busy";
 default:
  return "unknown-state";
 }
}
