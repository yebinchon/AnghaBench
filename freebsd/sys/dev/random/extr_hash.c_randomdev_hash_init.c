
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct randomdev_hash {int sha; } ;


 int SHA256_Init (int *) ;

void
randomdev_hash_init(struct randomdev_hash *context)
{

 SHA256_Init(&context->sha);
}
