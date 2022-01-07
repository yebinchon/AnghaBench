
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_4__ {int uz_flags; int uz_size; } ;


 int MPASS (int) ;
 int M_ZERO ;
 int UMA_ZONE_PCPU ;
 int bzero (void*,int ) ;
 int mp_maxid ;
 void* uma_zalloc_arg (TYPE_1__*,void*,int) ;
 void* zpcpu_get_cpu (void*,int) ;

void *
uma_zalloc_pcpu_arg(uma_zone_t zone, void *udata, int flags)
{
 void *item;





 item = uma_zalloc_arg(zone, udata, flags & ~M_ZERO);
 if (item != ((void*)0) && (flags & M_ZERO)) {




  bzero(item, zone->uz_size);

 }
 return (item);
}
