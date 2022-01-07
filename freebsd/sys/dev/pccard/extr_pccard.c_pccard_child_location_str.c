
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int number; } ;
typedef int device_t ;


 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int
pccard_child_location_str(device_t bus, device_t child, char *buf,
    size_t buflen)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct pccard_function *pf = devi->pf;

 snprintf(buf, buflen, "function=%d", pf->number);
 return (0);
}
