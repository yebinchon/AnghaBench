
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_schk {int dummy; } ;
struct TYPE_2__ {int schedhash; } ;


 TYPE_1__ dn_cfg ;
 struct dn_schk* dn_ht_find (int ,int,int ,int *) ;

__attribute__((used)) static inline struct dn_schk *
locate_scheduler(int i)
{
 return dn_ht_find(dn_cfg.schedhash, i, 0, ((void*)0));
}
