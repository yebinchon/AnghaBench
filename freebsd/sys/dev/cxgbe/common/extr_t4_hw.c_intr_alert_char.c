
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline char
intr_alert_char(u32 cause, u32 enable, u32 fatal)
{

 if (cause & fatal)
  return ('!');
 if (cause & enable)
  return ('*');
 return ('-');
}
