
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {int flags; } ;



int
regnode_get_flags(struct regnode *regnode)
{

 return (regnode->flags);
}
