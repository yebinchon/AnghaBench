
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;


 scalar_t__ nswbuf_max ;
 int pbuf_ctor ;
 int pbuf_dtor ;
 int pbuf_zone ;
 int uma_prealloc (int ,scalar_t__) ;
 scalar_t__ uma_zone_set_max (int ,int) ;
 int uma_zsecond_create (char*,int ,int ,int *,int *,int ) ;

uma_zone_t
pbuf_zsecond_create(char *name, int max)
{
 uma_zone_t zone;

 zone = uma_zsecond_create(name, pbuf_ctor, pbuf_dtor, ((void*)0), ((void*)0),
     pbuf_zone);






 if (nswbuf_max > 0)
  nswbuf_max += uma_zone_set_max(zone, max);
 else
  uma_prealloc(pbuf_zone, uma_zone_set_max(zone, max));

 return (zone);
}
