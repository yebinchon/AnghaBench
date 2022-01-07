
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int off_t ;



__attribute__((used)) static int
g_nop_dumper(void *priv, void *virtual, vm_offset_t physical, off_t offset,
    size_t length)
{

 return (0);
}
