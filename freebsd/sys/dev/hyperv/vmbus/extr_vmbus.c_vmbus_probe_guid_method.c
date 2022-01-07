
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_guid_type; } ;
struct hyperv_guid {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ memcmp (int *,struct hyperv_guid const*,int) ;
 struct vmbus_channel* vmbus_get_channel (int ) ;

__attribute__((used)) static int
vmbus_probe_guid_method(device_t bus, device_t dev,
    const struct hyperv_guid *guid)
{
 const struct vmbus_channel *chan = vmbus_get_channel(dev);

 if (memcmp(&chan->ch_guid_type, guid, sizeof(struct hyperv_guid)) == 0)
  return 0;
 return ENXIO;
}
