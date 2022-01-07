
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_OFWPROP ;
 int free (void*,int ) ;

void OF_prop_free(void *buf)
{

 free(buf, M_OFWPROP);
}
