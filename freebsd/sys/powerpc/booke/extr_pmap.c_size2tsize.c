
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 int ilog2 (int ) ;

__attribute__((used)) static unsigned int
size2tsize(vm_size_t size)
{

 return (ilog2(size) / 2 - 5);
}
