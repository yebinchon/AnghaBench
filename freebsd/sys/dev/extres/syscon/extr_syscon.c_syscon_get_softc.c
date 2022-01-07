
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscon {void* softc; } ;



void *
syscon_get_softc(struct syscon *syscon)
{

 return (syscon->softc);
}
