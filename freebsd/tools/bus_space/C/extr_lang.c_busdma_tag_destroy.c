
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int busdma_tag_t ;


 int bd_tag_destroy (int ) ;

int
busdma_tag_destroy(busdma_tag_t tag)
{

 return (bd_tag_destroy(tag));
}
