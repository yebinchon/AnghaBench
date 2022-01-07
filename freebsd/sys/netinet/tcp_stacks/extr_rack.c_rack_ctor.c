
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int memset (void*,int ,int ) ;

__attribute__((used)) static int
rack_ctor(void *mem, int32_t size, void *arg, int32_t how)
{
 memset(mem, 0, size);
 return (0);
}
