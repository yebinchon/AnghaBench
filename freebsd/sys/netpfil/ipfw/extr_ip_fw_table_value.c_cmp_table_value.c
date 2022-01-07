
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct table_val_link {int pval; } ;
struct named_object {int dummy; } ;


 int memcmp (int ,void const*,int) ;

__attribute__((used)) static int
cmp_table_value(struct named_object *no, const void *key, uint32_t kopt)
{

 return (memcmp(((struct table_val_link *)no)->pval, key, 56));
}
