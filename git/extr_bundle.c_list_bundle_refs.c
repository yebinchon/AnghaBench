
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_header {int references; } ;


 int list_refs (int *,int,char const**) ;

int list_bundle_refs(struct bundle_header *header, int argc, const char **argv)
{
 return list_refs(&header->references, argc, argv);
}
