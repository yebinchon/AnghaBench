
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_md {int * virtaddr; } ;
struct proto_busdma {int dummy; } ;


 int ENXIO ;
 int proto_busdma_md_destroy_internal (struct proto_busdma*,struct proto_md*) ;

__attribute__((used)) static int
proto_busdma_md_destroy(struct proto_busdma *busdma, struct proto_md *md)
{

 if (md->virtaddr != ((void*)0))
  return (ENXIO);
 return (proto_busdma_md_destroy_internal(busdma, md));
}
