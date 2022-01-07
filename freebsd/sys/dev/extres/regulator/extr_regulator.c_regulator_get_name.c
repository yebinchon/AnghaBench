
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regnode {scalar_t__ ref_cnt; char const* name; } ;
typedef TYPE_1__* regulator_t ;
struct TYPE_3__ {struct regnode* regnode; } ;


 int KASSERT (int,char*) ;

const char *
regulator_get_name(regulator_t reg)
{
 struct regnode *regnode;

 regnode = reg->regnode;
 KASSERT(regnode->ref_cnt > 0,
    ("Attempt to access unreferenced regulator: %s\n", regnode->name));
 return (regnode->name);
}
