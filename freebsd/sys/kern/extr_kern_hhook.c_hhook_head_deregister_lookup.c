
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hhook_head {int dummy; } ;
typedef int int32_t ;


 int EBUSY ;
 int hhook_head_deregister (struct hhook_head*) ;
 struct hhook_head* hhook_head_get (int ,int ) ;
 int hhook_head_release (struct hhook_head*) ;

int
hhook_head_deregister_lookup(int32_t hhook_type, int32_t hhook_id)
{
 struct hhook_head *hhh;
 int error;

 hhh = hhook_head_get(hhook_type, hhook_id);
 error = hhook_head_deregister(hhh);

 if (error == EBUSY)
  hhook_head_release(hhh);

 return (error);
}
