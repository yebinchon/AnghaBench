
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
strstate(int state)
{
    switch (state) {
    case 0:
 return "empty";
    case 1:
 return "filled";
    case 2:
 return "inactive";
    default:
 return "unknown";
    }
}
