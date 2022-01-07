
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;



__attribute__((used)) static vm_size_t
tsize2size(unsigned int tsize)
{






 return ((1 << (2 * tsize)) * 1024);
}
