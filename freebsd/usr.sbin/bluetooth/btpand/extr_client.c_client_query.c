
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ attr; int vlen; int * value; } ;
typedef TYPE_1__ sdp_attr_t ;
typedef int buffer ;


 int EXIT_FAILURE ;
 scalar_t__ SDP_ATTR_INVALID ;
 scalar_t__ SDP_ATTR_OK ;
 scalar_t__ SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST ;
 int SDP_ATTR_RANGE (scalar_t__,scalar_t__) ;
 int SDP_UUID_PROTOCOL_BNEP ;
 int SDP_UUID_PROTOCOL_L2CAP ;
 scalar_t__ _sdp_get_seq (int **,int *,int **) ;
 scalar_t__ _sdp_get_uint16 (int **,int *,int *) ;
 scalar_t__ _sdp_match_uuid16 (int **,int *,int ) ;
 int bt_ntoa (int *,int *) ;
 int errno ;
 int exit (int ) ;
 int l2cap_psm ;
 int local_bdaddr ;
 int log_err (char*,int ,...) ;
 int log_info (char*,int ,int ) ;
 int remote_bdaddr ;
 int sdp_close (void*) ;
 int sdp_error (void*) ;
 void* sdp_open (int *,int *) ;
 int sdp_search (void*,int,int *,int,int *,int,TYPE_1__*) ;
 int service_class ;
 int service_name ;
 int strerror (int ) ;

__attribute__((used)) static void
client_query(void)
{
 uint8_t buffer[512];
 sdp_attr_t attr;
 uint32_t range;
 void *ss;
 int rv;
 uint8_t *seq0, *seq1;

 attr.flags = SDP_ATTR_INVALID;
 attr.attr = 0;
 attr.vlen = sizeof(buffer);
 attr.value = buffer;

 range = SDP_ATTR_RANGE(SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST,
          SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST);

 ss = sdp_open(&local_bdaddr, &remote_bdaddr);
 if (ss == ((void*)0) || (errno = sdp_error(ss)) != 0) {
  log_err("%s: %m", service_name);
  exit(EXIT_FAILURE);
 }

 log_info("Searching for %s service at %s",
     service_name, bt_ntoa(&remote_bdaddr, ((void*)0)));

 rv = sdp_search(ss, 1, &service_class, 1, &range, 1, &attr);
 if (rv != 0) {
  log_err("%s: %s", service_name, strerror(sdp_error(ss)));
  exit(EXIT_FAILURE);
 }

 sdp_close(ss);

 if (attr.flags != SDP_ATTR_OK
     || attr.attr != SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST) {
  log_err("%s service not found", service_name);
  exit(EXIT_FAILURE);
 }
 if (_sdp_get_seq(&attr.value, attr.value + attr.vlen, &seq0)
     && _sdp_get_seq(&seq0, attr.value, &seq1)
     && _sdp_match_uuid16(&seq1, seq0, SDP_UUID_PROTOCOL_L2CAP)
     && _sdp_get_uint16(&seq1, seq0, &l2cap_psm)
     && _sdp_get_seq(&seq0, attr.value, &seq1)
     && _sdp_match_uuid16(&seq1, seq0, SDP_UUID_PROTOCOL_BNEP)) {
  log_info("Found PSM %d for service %s", l2cap_psm, service_name);
  return;
 }

 log_err("%s query failed", service_name);
 exit(EXIT_FAILURE);
}
