
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {char const* name; } ;



const char *
regnode_get_name(struct regnode *regnode)
{

 return (regnode->name);
}
