
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bucketdisable ;
 int vm_page_count_min () ;

__attribute__((used)) static void
bucket_enable(void)
{
 bucketdisable = vm_page_count_min();
}
