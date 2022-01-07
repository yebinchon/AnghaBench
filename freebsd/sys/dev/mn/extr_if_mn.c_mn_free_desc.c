
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trxd {struct trxd* vnext; } ;


 struct trxd* mn_desc_free ;

__attribute__((used)) static void
mn_free_desc(struct trxd *dp)
{
 dp->vnext = mn_desc_free;
 mn_desc_free = dp;
}
