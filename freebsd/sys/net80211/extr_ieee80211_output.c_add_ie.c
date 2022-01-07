
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int*,int const*,int const) ;

__attribute__((used)) static __inline uint8_t *
add_ie(uint8_t *frm, const uint8_t *ie)
{
 memcpy(frm, ie, 2 + ie[1]);
 return frm + 2 + ie[1];
}
