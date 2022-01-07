
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_common {int res_id; int state; } ;
struct res_xrcdn {struct res_common com; } ;


 int GFP_KERNEL ;
 int RES_XRCD_ALLOCATED ;
 struct res_xrcdn* kzalloc (int,int ) ;

__attribute__((used)) static struct res_common *alloc_xrcdn_tr(int id)
{
 struct res_xrcdn *ret;

 ret = kzalloc(sizeof *ret, GFP_KERNEL);
 if (!ret)
  return ((void*)0);

 ret->com.res_id = id;
 ret->com.state = RES_XRCD_ALLOCATED;

 return &ret->com;
}
