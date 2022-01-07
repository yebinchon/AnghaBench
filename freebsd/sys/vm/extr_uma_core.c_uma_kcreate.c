
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;
typedef int uma_keg_t ;
typedef int uma_init ;
typedef int uma_fini ;
typedef int uint32_t ;
struct uma_kctor_args {size_t size; int align; int zone; int flags; int fini; int uminit; } ;


 int M_WAITOK ;
 int UMA_ALIGN_CACHE ;
 int UMA_ANYDOMAIN ;
 int kegs ;
 int uma_align_cache ;
 int zone_alloc_item (int ,struct uma_kctor_args*,int ,int ) ;

__attribute__((used)) static uma_keg_t
uma_kcreate(uma_zone_t zone, size_t size, uma_init uminit, uma_fini fini,
  int align, uint32_t flags)
{
 struct uma_kctor_args args;

 args.size = size;
 args.uminit = uminit;
 args.fini = fini;
 args.align = (align == UMA_ALIGN_CACHE) ? uma_align_cache : align;
 args.flags = flags;
 args.zone = zone;
 return (zone_alloc_item(kegs, &args, UMA_ANYDOMAIN, M_WAITOK));
}
