
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int dummy; } ;
typedef int device_t ;


 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int pccard_function_disable (struct pccard_function*) ;

__attribute__((used)) static void
pccard_child_detached(device_t parent, device_t dev)
{
 struct pccard_ivar *ivar = PCCARD_IVAR(dev);
 struct pccard_function *pf = ivar->pf;

 pccard_function_disable(pf);
}
