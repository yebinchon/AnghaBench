
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct randomdev_hash {int sha; } ;


 int SHA256_Update (int *,void const*,size_t) ;

void
randomdev_hash_iterate(struct randomdev_hash *context, const void *data, size_t size)
{

 SHA256_Update(&context->sha, data, size);
}
