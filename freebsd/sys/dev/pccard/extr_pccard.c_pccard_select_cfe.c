
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {scalar_t__ cfe; } ;
typedef int device_t ;


 int ENOMEM ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int pccard_function_init (struct pccard_function*,int) ;

int
pccard_select_cfe(device_t dev, int entry)
{
 struct pccard_ivar *devi = PCCARD_IVAR(dev);
 struct pccard_function *pf = devi->pf;

 pccard_function_init(pf, entry);
 return (pf->cfe ? 0 : ENOMEM);
}
