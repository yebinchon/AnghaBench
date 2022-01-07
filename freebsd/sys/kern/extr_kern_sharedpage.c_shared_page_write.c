
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (void const*,scalar_t__,int) ;
 scalar_t__ shared_page_mapping ;

void
shared_page_write(int base, int size, const void *data)
{

 bcopy(data, shared_page_mapping + base, size);
}
