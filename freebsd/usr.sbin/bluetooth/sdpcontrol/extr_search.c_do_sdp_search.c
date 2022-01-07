
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef size_t int32_t ;
struct TYPE_3__ {scalar_t__ flags; int attr; int vlen; int value; } ;


 int BSIZE ;
 int ERROR ;
 int OK ;

 scalar_t__ SDP_ATTR_INVALID ;
 scalar_t__ SDP_ATTR_OK ;



 size_t SDP_DATA_UINT32 ;
 int SDP_GET32 (size_t,int) ;
 int SDP_GET8 (size_t,int) ;
 int SDP_SERVICE_CLASS_COMMON_ISDN_ACCESS ;
 int SDP_SERVICE_CLASS_CORDLESS_TELEPHONY ;
 int SDP_SERVICE_CLASS_DIALUP_NETWORKING ;
 int SDP_SERVICE_CLASS_FAX ;
 int SDP_SERVICE_CLASS_GN ;
 int SDP_SERVICE_CLASS_HEADSET ;
 int SDP_SERVICE_CLASS_HUMAN_INTERFACE_DEVICE ;
 int SDP_SERVICE_CLASS_LAN_ACCESS_USING_PPP ;
 int SDP_SERVICE_CLASS_NAP ;
 int SDP_SERVICE_CLASS_OBEX_FILE_TRANSFER ;
 int SDP_SERVICE_CLASS_OBEX_OBJECT_PUSH ;
 int SDP_SERVICE_CLASS_SERIAL_PORT ;
 int USAGE ;
 int attrs ;
 int attrs_len ;
 int* buffer ;
 int fprintf (int ,char*,...) ;
 int print_bluetooth_profile_descriptor_list (int,int) ;
 int print_protocol_descriptor_list (int,int) ;
 int print_service_class_id_list (int,int) ;
 size_t sdp_search (void*,int,int *,int ,int ,size_t,TYPE_1__*) ;
 int stderr ;
 int stdout ;
 size_t strtoul (char*,char**,int) ;
 int tolower (char) ;
 TYPE_1__* values ;
 size_t values_len ;

__attribute__((used)) static int
do_sdp_search(void *xs, int argc, char **argv)
{
 char *ep = ((void*)0);
 int32_t n, type, value;
 uint16_t service;


 switch (argc) {
 case 1:
  n = strtoul(argv[0], &ep, 16);
  if (*ep != 0) {
   switch (tolower(argv[0][0])) {
   case 'c':
    switch (tolower(argv[0][1])) {
    case 'i':
     service = SDP_SERVICE_CLASS_COMMON_ISDN_ACCESS;
     break;

    case 't':
     service = SDP_SERVICE_CLASS_CORDLESS_TELEPHONY;
     break;

    default:
     return (USAGE);

    }
    break;

   case 'd':
    service = SDP_SERVICE_CLASS_DIALUP_NETWORKING;
    break;

   case 'f':
    switch (tolower(argv[0][1])) {
    case 'a':
     service = SDP_SERVICE_CLASS_FAX;
     break;

    case 't':
     service = SDP_SERVICE_CLASS_OBEX_FILE_TRANSFER;
     break;

    default:
     return (USAGE);

    }
    break;

   case 'g':
    service = SDP_SERVICE_CLASS_GN;
    break;

   case 'h':
    switch (tolower(argv[0][1])) {
    case 'i':
     service = SDP_SERVICE_CLASS_HUMAN_INTERFACE_DEVICE;
     break;

    case 's':
     service = SDP_SERVICE_CLASS_HEADSET;
     break;

    default:
     return (USAGE);

    }
    break;

   case 'l':
    service = SDP_SERVICE_CLASS_LAN_ACCESS_USING_PPP;
    break;

   case 'n':
    service = SDP_SERVICE_CLASS_NAP;
    break;

   case 'o':
    service = SDP_SERVICE_CLASS_OBEX_OBJECT_PUSH;
    break;

   case 's':
    service = SDP_SERVICE_CLASS_SERIAL_PORT;
    break;

   default:
    return (USAGE);

   }
  } else
   service = (uint16_t) n;
  break;

 default:
  return (USAGE);
 }


 for (n = 0; n < values_len; n ++) {
  values[n].flags = SDP_ATTR_INVALID;
  values[n].attr = 0;
  values[n].vlen = BSIZE;
  values[n].value = buffer[n];
 }


 n = sdp_search(xs, 1, &service, attrs_len, attrs, values_len, values);
 if (n != 0)
  return (ERROR);


 for (n = 0; n < values_len; n ++) {
  if (values[n].flags != SDP_ATTR_OK)
   break;

  switch (values[n].attr) {
  case 128:
   fprintf(stdout, "\n");
   if (values[n].vlen == 5) {
    SDP_GET8(type, values[n].value);
    if (type == SDP_DATA_UINT32) {
     SDP_GET32(value, values[n].value);
     fprintf(stdout, "Record Handle: " "%#8.8x\n", value);

    } else
     fprintf(stderr, "Invalid type=%#x " "Record Handle " "attribute!\n", type);


   } else
    fprintf(stderr, "Invalid size=%d for Record " "Handle attribute\n",

      values[n].vlen);
   break;

  case 129:
   fprintf(stdout, "Service Class ID List:\n");
   print_service_class_id_list(values[n].value,
     values[n].value + values[n].vlen);
   break;

  case 130:
   fprintf(stdout, "Protocol Descriptor List:\n");
   print_protocol_descriptor_list(values[n].value,
     values[n].value + values[n].vlen);
   break;

  case 131:
   fprintf(stdout, "Bluetooth Profile Descriptor List:\n");
   print_bluetooth_profile_descriptor_list(values[n].value,
     values[n].value + values[n].vlen);
   break;

  default:
   fprintf(stderr, "Unexpected attribute ID=%#4.4x\n",
     values[n].attr);
   break;
  }
 }

 return (OK);
}
