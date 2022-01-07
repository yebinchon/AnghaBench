
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
 int PI_AV ;
 int PI_DISK ;
 int PI_DULL ;
 int PI_NET ;
 int PI_REALTIME ;
 int PI_TTY ;
 int panic (char*) ;

u_char
intr_priority(enum intr_type flags)
{
 u_char pri;

 flags &= (128 | 133 | 129 |
     132 | 130 | 131 | 134);
 switch (flags) {
 case 128:
  pri = PI_TTY;
  break;
 case 133:
  pri = PI_DISK;
  break;
 case 129:
  pri = PI_NET;
  break;
 case 132:
  pri = PI_DISK;
  break;
 case 134:
  pri = PI_AV;
  break;
 case 131:
  pri = PI_REALTIME;
  break;
 case 130:
  pri = PI_DULL;
  break;
 default:

  panic("intr_priority: no interrupt type in flags");
 }

 return pri;
}
