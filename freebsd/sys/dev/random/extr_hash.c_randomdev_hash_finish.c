
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct randomdev_hash {int sha; } ;


 int SHA256_Final (void*,int *) ;

void
randomdev_hash_finish(struct randomdev_hash *context, void *buf)
{

 SHA256_Final(buf, &context->sha);
}
