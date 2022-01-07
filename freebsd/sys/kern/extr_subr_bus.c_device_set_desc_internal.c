
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {char* desc; int flags; } ;


 int DF_DESCMALLOCED ;
 int M_BUS ;
 int M_NOWAIT ;
 int bus_data_generation_update () ;
 int free (char*,int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
device_set_desc_internal(device_t dev, const char* desc, int copy)
{
 if (dev->desc && (dev->flags & DF_DESCMALLOCED)) {
  free(dev->desc, M_BUS);
  dev->flags &= ~DF_DESCMALLOCED;
  dev->desc = ((void*)0);
 }

 if (copy && desc) {
  dev->desc = malloc(strlen(desc) + 1, M_BUS, M_NOWAIT);
  if (dev->desc) {
   strcpy(dev->desc, desc);
   dev->flags |= DF_DESCMALLOCED;
  }
 } else {

  dev->desc = (char *)(uintptr_t) desc;
 }

 bus_data_generation_update();
}
