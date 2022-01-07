
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static int
urtw_isbmode(uint16_t rate)
{

 return ((rate <= 22 && rate != 12 && rate != 18) ||
     rate == 44) ? (1) : (0);
}
