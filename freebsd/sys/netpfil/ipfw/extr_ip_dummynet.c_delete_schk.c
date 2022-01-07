
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_schk {int dummy; } ;
struct TYPE_2__ {int schedhash; } ;


 int DNHT_REMOVE ;
 scalar_t__ DN_DESTROY ;
 scalar_t__ DN_MAX_ID ;
 int EINVAL ;
 int ND (char*,int,struct dn_schk*) ;
 int delete_fs (scalar_t__,int) ;
 TYPE_1__ dn_cfg ;
 struct dn_schk* dn_ht_find (int ,int,int ,int *) ;
 int schk_delete_cb (struct dn_schk*,void*) ;

__attribute__((used)) static int
delete_schk(int i)
{
 struct dn_schk *s;

 s = dn_ht_find(dn_cfg.schedhash, i, DNHT_REMOVE, ((void*)0));
 ND("%d %p", i, s);
 if (!s)
  return EINVAL;
 delete_fs(i + DN_MAX_ID, 1);

 schk_delete_cb(s, (void*)(uintptr_t)DN_DESTROY);
 return 0;
}
