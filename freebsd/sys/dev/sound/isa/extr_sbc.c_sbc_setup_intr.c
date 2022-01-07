
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {struct sbc_ihl* ihl; struct resource** irq; } ;
struct sbc_ihl {int ** intr; void** intr_arg; } ;
struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int EINVAL ;
 int INTR_MAX ;
 int IRQ_MAX ;
 struct sbc_softc* device_get_softc (int ) ;
 int printf (char*) ;
 int sbc_lock (struct sbc_softc*) ;
 int sbc_unlock (struct sbc_softc*) ;

__attribute__((used)) static int
sbc_setup_intr(device_t dev, device_t child, struct resource *irq, int flags,
           driver_filter_t *filter,
        driver_intr_t *intr,
           void *arg, void **cookiep)
{
 struct sbc_softc *scp = device_get_softc(dev);
 struct sbc_ihl *ihl = ((void*)0);
 int i, ret;

 if (filter != ((void*)0)) {
  printf("sbc.c: we cannot use a filter here\n");
  return (EINVAL);
 }
 sbc_lock(scp);
 i = 0;
 while (i < IRQ_MAX) {
  if (irq == scp->irq[i]) ihl = &scp->ihl[i];
  i++;
 }
 ret = 0;
 if (ihl == ((void*)0)) ret = EINVAL;
 i = 0;
 while ((ret == 0) && (i < INTR_MAX)) {
  if (ihl->intr[i] == ((void*)0)) {
   ihl->intr[i] = intr;
   ihl->intr_arg[i] = arg;
   *cookiep = &ihl->intr[i];
   ret = -1;
  } else i++;
 }
 sbc_unlock(scp);
 return (ret > 0)? EINVAL : 0;
}
