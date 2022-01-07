
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode_std_param {int dummy; } ;
struct regnode {struct regnode_std_param std_param; } ;



struct regnode_std_param *regnode_get_stdparam(struct regnode *regnode)
{

 return (&regnode->std_param);
}
