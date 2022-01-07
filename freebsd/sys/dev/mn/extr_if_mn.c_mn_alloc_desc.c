
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trxd {struct trxd* vnext; } ;


 int M_MN ;
 int M_NOWAIT ;
 scalar_t__ malloc (int,int ,int ) ;
 struct trxd* mn_desc_free ;

__attribute__((used)) static struct trxd *
mn_alloc_desc(void)
{
 struct trxd *dp;

 dp = mn_desc_free;
 if (dp)
  mn_desc_free = dp->vnext;
 else
  dp = (struct trxd *)malloc(sizeof *dp, M_MN, M_NOWAIT);
 return (dp);
}
