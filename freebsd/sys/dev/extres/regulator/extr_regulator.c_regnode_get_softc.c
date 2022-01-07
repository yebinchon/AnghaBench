
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {void* softc; } ;



void *
regnode_get_softc(struct regnode *regnode)
{

 return (regnode->softc);
}
