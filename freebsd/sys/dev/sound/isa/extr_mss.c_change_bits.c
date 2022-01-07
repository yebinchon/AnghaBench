
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__** mixer_tab ;
struct TYPE_3__ {int regno; int polarity; int nbits; int bitoffs; } ;


 int DEB (int ) ;
 int printf (char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void
change_bits(mixer_tab *t, u_char *regval, int dev, int chn, int newval)
{
     u_char mask;
     int shift;

     DEB(printf("ch_bits dev %d ch %d val %d old 0x%02x "
  "r %d p %d bit %d off %d\n",
  dev, chn, newval, *regval,
  (*t)[dev][chn].regno, (*t)[dev][chn].polarity,
  (*t)[dev][chn].nbits, (*t)[dev][chn].bitoffs ) );

     if ( (*t)[dev][chn].polarity == 1)
  newval = 100 - newval ;

     mask = (1 << (*t)[dev][chn].nbits) - 1;
     newval = (int) ((newval * mask) + 50) / 100;
     shift = (*t)[dev][chn].bitoffs ;

     *regval &= ~(mask << shift);
     *regval |= (newval & mask) << shift;
}
