
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fufh_type_t ;







__attribute__((used)) static inline int
fufh_type_2_fflags(fufh_type_t type)
{
 int oflags = -1;

 switch (type) {
 case 130:
 case 128:
 case 129:
 case 131:
  oflags = type;
  break;
 default:
  break;
 }

 return oflags;
}
