
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 void* em_sctx ;

__attribute__((used)) static void *
em_register(device_t dev)
{
 return (em_sctx);
}
