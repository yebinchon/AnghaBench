
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iface {struct iface* addr; struct iface* descr; struct iface* name; } ;


 int free (struct iface*) ;

void
iface_Free(struct iface *iface)
{
    free(iface->name);
    free(iface->descr);
    free(iface->addr);
    free(iface);
}
