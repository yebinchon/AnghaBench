
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
typedef int device_t ;


 int HIFN_PLL_IS ;
 int HIFN_PLL_ND_SHIFT ;
 int HIFN_PLL_REF_SEL ;



 int checkmaxmin (int ,char*,int,int,int) ;
 int device_get_unit (int ) ;
 int pci_get_device (int ) ;
 scalar_t__ resource_string_value (char*,int ,char*,char const**) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static void
hifn_getpllconfig(device_t dev, u_int *pll)
{
 const char *pllspec;
 u_int freq, mul, fl, fh;
 u_int32_t pllconfig;
 char *nxt;

 if (resource_string_value("hifn", device_get_unit(dev),
     "pllconfig", &pllspec))
  pllspec = "ext66";
 fl = 33, fh = 66;
 pllconfig = 0;
 if (strncmp(pllspec, "ext", 3) == 0) {
  pllspec += 3;
  pllconfig |= HIFN_PLL_REF_SEL;
  switch (pci_get_device(dev)) {
  case 129:
  case 128:
   fl = 20, fh = 100;
   break;





  }
 } else if (strncmp(pllspec, "pci", 3) == 0)
  pllspec += 3;
 freq = strtoul(pllspec, &nxt, 10);
 if (nxt == pllspec)
  freq = 66;
 else
  freq = checkmaxmin(dev, "frequency", freq, fl, fh);





 mul = checkmaxmin(dev, "PLL divisor", (266 / freq) &~ 1, 2, 12);
 pllconfig |= (mul / 2 - 1) << HIFN_PLL_ND_SHIFT;
 if (mul > 8)
  pllconfig |= HIFN_PLL_IS;
 *pll = pllconfig;
}
