
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mca_resize_freelist () ;

__attribute__((used)) static void
mca_resize(void *context, int pending)
{

 mca_resize_freelist();
}
