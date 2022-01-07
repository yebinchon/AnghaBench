
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ch_guid_inst; int ch_guid_type; } ;
typedef int guidbuf ;
typedef int device_t ;


 int HYPERV_GUID_STRLEN ;
 int hyperv_guid2str (int *,char*,int) ;
 int strlcat (char*,char*,size_t) ;
 struct vmbus_channel* vmbus_get_channel (int ) ;

__attribute__((used)) static int
vmbus_child_pnpinfo_str(device_t dev, device_t child, char *buf, size_t buflen)
{
 const struct vmbus_channel *chan;
 char guidbuf[HYPERV_GUID_STRLEN];

 chan = vmbus_get_channel(child);
 if (chan == ((void*)0)) {

  return (0);
 }

 strlcat(buf, "classid=", buflen);
 hyperv_guid2str(&chan->ch_guid_type, guidbuf, sizeof(guidbuf));
 strlcat(buf, guidbuf, buflen);

 strlcat(buf, " deviceid=", buflen);
 hyperv_guid2str(&chan->ch_guid_inst, guidbuf, sizeof(guidbuf));
 strlcat(buf, guidbuf, buflen);

 return (0);
}
