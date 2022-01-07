
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
wday_str(int idx)
{
 static const char *weekdays[] = {
  "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
 };

 if (idx >= 0 && idx < 7)
  return (weekdays[idx]);
 else
  return ("UNK");
}
