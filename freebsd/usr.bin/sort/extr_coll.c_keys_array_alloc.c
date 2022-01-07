
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys_array {int dummy; } ;


 size_t keys_array_size () ;
 int memset (struct keys_array*,int ,size_t) ;
 struct keys_array* sort_malloc (size_t) ;

struct keys_array *
keys_array_alloc(void)
{
 struct keys_array *ka;
 size_t sz;

 sz = keys_array_size();
 ka = sort_malloc(sz);
 memset(ka, 0, sz);

 return (ka);
}
