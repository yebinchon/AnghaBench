
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_color_t ;


 int* teken_256to16tab ;

teken_color_t
teken_256to16(teken_color_t c)
{

 return (teken_256to16tab[c % 256]);
}
