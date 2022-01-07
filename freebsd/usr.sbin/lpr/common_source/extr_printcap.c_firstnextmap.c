
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
firstnextmap(int *status)
{
 switch (*status) {
 case 0:
  return 0;
 case 1:
  *status = 0;
  return 1;
 case 2:
  *status = 1;
  return 1;
 case -1:
  *status = -2;
  return 0;
 case -2:
  *status = -3;
  return 1;
 default:
  return 0;
 }
}
