
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_value {int dummy; } ;


 int numcoll_impl (struct key_value*,struct key_value*,size_t,int) ;

__attribute__((used)) static int
numcoll(struct key_value *kv1, struct key_value *kv2, size_t offset)
{

 return (numcoll_impl(kv1, kv2, offset, 0));
}
