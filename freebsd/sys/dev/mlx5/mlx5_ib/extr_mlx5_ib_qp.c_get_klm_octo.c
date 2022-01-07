
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 int ALIGN (int,int) ;
 int cpu_to_be16 (int) ;

__attribute__((used)) static __be16 get_klm_octo(int npages)
{
 return cpu_to_be16(ALIGN(npages, 8) / 2);
}
