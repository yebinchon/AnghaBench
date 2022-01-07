
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_xrcd {int dummy; } ;
struct ib_uobject {struct ib_xrcd* object; } ;
struct ib_ucontext {int dummy; } ;


 int ib_uverbs_xrcd_idr ;
 struct ib_uobject* idr_read_uobj (int *,int,struct ib_ucontext*,int ) ;

__attribute__((used)) static struct ib_xrcd *idr_read_xrcd(int xrcd_handle, struct ib_ucontext *context,
         struct ib_uobject **uobj)
{
 *uobj = idr_read_uobj(&ib_uverbs_xrcd_idr, xrcd_handle, context, 0);
 return *uobj ? (*uobj)->object : ((void*)0);
}
