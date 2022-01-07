
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int magnitude (int const) ;
 int printf (char*,int const) ;

__attribute__((used)) static void
format(const uint32_t data)
{






 switch (magnitude(data)) {
 default:
 case 2:
  printf("0x%04X", data);
  break;
 case 3:
  printf("0x%06X", data);
  break;
 case 4:
  printf("0x%08X", data);
  break;
        }
}
