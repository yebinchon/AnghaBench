
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hwreset {int dummy; } ;
typedef TYPE_1__* hwreset_t ;
typedef void* device_t ;
struct TYPE_4__ {intptr_t rst_id; void* provider_dev; void* consumer_dev; } ;


 int M_HWRESET ;
 int M_WAITOK ;
 int M_ZERO ;
 TYPE_1__* malloc (int,int ,int) ;

int
hwreset_get_by_id(device_t consumer_dev, device_t provider_dev, intptr_t id,
    hwreset_t *rst_out)
{
 hwreset_t rst;


 rst = malloc(sizeof(struct hwreset), M_HWRESET,
     M_WAITOK | M_ZERO);
 rst->consumer_dev = consumer_dev;
 rst->provider_dev = provider_dev;
 rst->rst_id = id;
 *rst_out = rst;
 return (0);
}
