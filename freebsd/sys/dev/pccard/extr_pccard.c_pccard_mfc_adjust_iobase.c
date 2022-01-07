
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct pccard_function {scalar_t__ pf_mfc_iomax; scalar_t__ pf_mfc_iobase; int dev; } ;
typedef scalar_t__ rman_res_t ;
typedef int bus_size_t ;


 int DEVPRINTF (int ) ;
 int PCCARD_CCR_IOBASE0 ;
 int PCCARD_CCR_IOBASE1 ;
 int PCCARD_CCR_IOBASE2 ;
 int PCCARD_CCR_IOBASE3 ;
 int PCCARD_CCR_IOSIZE ;
 int pccard_ccr_write (struct pccard_function*,int ,int) ;

__attribute__((used)) static void
pccard_mfc_adjust_iobase(struct pccard_function *pf, rman_res_t addr,
    rman_res_t offset, rman_res_t size)
{
 bus_size_t iosize, tmp;

 if (addr != 0) {
  if (pf->pf_mfc_iomax == 0) {
   pf->pf_mfc_iobase = addr + offset;
   pf->pf_mfc_iomax = pf->pf_mfc_iobase + size;
  } else {

   if (pf->pf_mfc_iobase > addr + offset)
    pf->pf_mfc_iobase = addr + offset;
   if (pf->pf_mfc_iomax < addr + offset + size)
    pf->pf_mfc_iomax = addr + offset + size;
  }
 }

 tmp = pf->pf_mfc_iomax - pf->pf_mfc_iobase;

 for (iosize = 1; iosize < tmp; iosize <<= 1)
  ;
 iosize--;

 DEVPRINTF((pf->dev, "MFC: I/O base %#jx IOSIZE %#jx\n",
     (uintmax_t)pf->pf_mfc_iobase, (uintmax_t)(iosize + 1)));
 pccard_ccr_write(pf, PCCARD_CCR_IOBASE0,
     pf->pf_mfc_iobase & 0xff);
 pccard_ccr_write(pf, PCCARD_CCR_IOBASE1,
     (pf->pf_mfc_iobase >> 8) & 0xff);
 pccard_ccr_write(pf, PCCARD_CCR_IOBASE2, 0);
 pccard_ccr_write(pf, PCCARD_CCR_IOBASE3, 0);
 pccard_ccr_write(pf, PCCARD_CCR_IOSIZE, iosize);
}
