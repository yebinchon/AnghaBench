
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct hid_device {size_t control_psm; size_t interrupt_psm; int reconnect_initiate; int battery_power; int normally_connectable; int * desc; void* version; void* product_id; void* vendor_id; int bdaddr; int name; } ;
typedef size_t int32_t ;
typedef void* int16_t ;
typedef int bdaddr_t ;
struct TYPE_6__ {scalar_t__ flags; int attr; size_t vlen; int * value; } ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOATTR ;
 scalar_t__ ENOMEM ;
 int HCI_DEVNAME_SIZE ;
 int * NG_HCI_BDADDR_ANY ;




 scalar_t__ SDP_ATTR_INVALID ;
 scalar_t__ SDP_ATTR_OK ;

 size_t SDP_DATA_UINT16 ;
 int SDP_GET16 (void*,int *) ;
 int SDP_GET8 (size_t,int *) ;
 int * attrs ;
 int attrs_devid ;
 scalar_t__ bt_devname (char*,int *) ;
 int bt_devremote_name_gen (char*,int *) ;
 int hid_init_return_values () ;
 size_t hid_sdp_parse_boolean (TYPE_1__*) ;
 int hid_sdp_parse_hid_descriptor (TYPE_1__*) ;
 size_t hid_sdp_parse_protocol_descriptor_list (TYPE_1__*) ;
 int hid_sdp_query_exit (scalar_t__) ;
 int * hid_use_report_desc (int *,size_t) ;
 int nattrs ;
 size_t nvalues ;
 int sdp_close (void*) ;
 scalar_t__ sdp_error (void*) ;
 scalar_t__ sdp_get_lcaddr (void*,int *) ;
 void* sdp_open (int const*,int *) ;
 scalar_t__ sdp_search (void*,int,int *,int,int *,size_t,TYPE_1__*) ;
 int service ;
 int service_devid ;
 TYPE_1__* values ;

__attribute__((used)) static int32_t
hid_sdp_query(bdaddr_t const *local, struct hid_device *hd, int32_t *error)
{
 void *ss = ((void*)0);
 uint8_t *hid_descriptor = ((void*)0), *v;
 int32_t i, control_psm = -1, interrupt_psm = -1,
     reconnect_initiate = -1,
     normally_connectable = 0, battery_power = 0,
     hid_descriptor_length = -1, type;
 int16_t vendor_id = 0, product_id = 0, version = 0;
 bdaddr_t sdp_local;
 char devname[HCI_DEVNAME_SIZE];

 if (local == ((void*)0))
  local = NG_HCI_BDADDR_ANY;
 if (hd == ((void*)0))
  hid_sdp_query_exit(EINVAL);

 hid_init_return_values();

 if ((ss = sdp_open(local, &hd->bdaddr)) == ((void*)0))
  hid_sdp_query_exit(ENOMEM);
 if (sdp_error(ss) != 0)
  hid_sdp_query_exit(sdp_error(ss));
 if (sdp_search(ss, 1, &service, nattrs, attrs, nvalues, values) != 0)
                hid_sdp_query_exit(sdp_error(ss));

 for (i = 0; i < nvalues; i ++) {
  if (values[i].flags != SDP_ATTR_OK)
   continue;

  switch (values[i].attr) {
  case 128:
   control_psm = hid_sdp_parse_protocol_descriptor_list(&values[i]);
   break;

  case 132:
   interrupt_psm = hid_sdp_parse_protocol_descriptor_list(&values[i]);
   break;

  case 0x0205:
   reconnect_initiate = hid_sdp_parse_boolean(&values[i]);
   break;

  case 0x0206:
   if (hid_sdp_parse_hid_descriptor(&values[i]) == 0) {
    hid_descriptor = values[i].value;
    hid_descriptor_length = values[i].vlen;
   }
   break;

  case 0x0209:
   battery_power = hid_sdp_parse_boolean(&values[i]);
   break;

  case 0x020d:
   normally_connectable = hid_sdp_parse_boolean(&values[i]);
   break;
  }
 }

 hid_init_return_values();

 if (sdp_search(ss, 1, &service_devid, 1, &attrs_devid, nvalues, values) != 0)
                hid_sdp_query_exit(sdp_error(ss));


 if (sdp_get_lcaddr(ss, &sdp_local) != 0 ||
     bt_devname(devname, &sdp_local) == 0)
  hid_sdp_query_exit(ENOATTR);

        sdp_close(ss);
        ss = ((void*)0);


 for (i = 0; i < 3; i ++ ) {
  if (values[i].flags == SDP_ATTR_INVALID )
   continue;


  if (values[i].vlen != 3)
   continue;


  v = values[i].value;
  SDP_GET8(type, v);
  if (type != SDP_DATA_UINT16 )
   continue;

  switch (values[i].attr) {
   case 130:
    SDP_GET16(vendor_id, v);
    break;
   case 131:
    SDP_GET16(product_id, v);
    break;
   case 129:
    SDP_GET16(version, v);
    break;
   default:
    break;
  }
 }

 if (control_psm == -1 || interrupt_psm == -1 ||
     reconnect_initiate == -1 ||
     hid_descriptor == ((void*)0) || hid_descriptor_length == -1)
  hid_sdp_query_exit(ENOATTR);
 hd->name = bt_devremote_name_gen(devname, &hd->bdaddr);
 hd->vendor_id = vendor_id;
 hd->product_id = product_id;
 hd->version = version;
 hd->control_psm = control_psm;
 hd->interrupt_psm = interrupt_psm;
 hd->reconnect_initiate = reconnect_initiate? 1 : 0;
 hd->battery_power = battery_power? 1 : 0;
 hd->normally_connectable = normally_connectable? 1 : 0;
 hd->desc = hid_use_report_desc(hid_descriptor, hid_descriptor_length);
 if (hd->desc == ((void*)0))
  hid_sdp_query_exit(ENOMEM);

 return (0);
}
