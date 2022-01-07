
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
struct arge_softc {int dummy; } ;
 int ARGEDEBUG (struct arge_softc*,int ,char*,unsigned long,unsigned long) ;
 int ARGE_DBG_RESET ;
 int EINVAL ;
 int ENOENT ;
 unsigned long* ar71xx_mdio_div_table ;
 unsigned long ar71xx_mdio_freq () ;
 int ar71xx_soc ;
 unsigned long* ar7240_mdio_div_table ;
 unsigned long* ar933x_mdio_div_table ;
 int nitems (unsigned long*) ;

__attribute__((used)) static int
arge_mdio_get_divider(struct arge_softc *sc, unsigned long mdio_clock)
{
 unsigned long ref_clock, t;
 const uint32_t *table;
 int ndivs;
 int i;





 ref_clock = ar71xx_mdio_freq();





 if (ref_clock == 0 || mdio_clock == 0)
  return (-EINVAL);




 switch (ar71xx_soc) {
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  table = ar933x_mdio_div_table;
  ndivs = nitems(ar933x_mdio_div_table);
  break;

 case 139:
 case 138:
 case 137:
  table = ar7240_mdio_div_table;
  ndivs = nitems(ar7240_mdio_div_table);
  break;

 default:
  table = ar71xx_mdio_div_table;
  ndivs = nitems(ar71xx_mdio_div_table);
 }
 for (i = 0; i < ndivs; i++) {
  t = ref_clock / table[i];
  if (t <= mdio_clock) {
   return (i);
  }
 }

 ARGEDEBUG(sc, ARGE_DBG_RESET,
     "No divider found; MDIO=%lu Hz; target=%lu Hz\n",
  ref_clock, mdio_clock);
 return (-ENOENT);
}
