
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {int state; } ;


 char const** states ;

const char *
datalink_State(struct datalink *dl)
{
  if (dl->state >= sizeof states / sizeof states[0])
    return "unknown";
  return states[dl->state];
}
