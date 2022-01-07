
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ssize_t ;
struct TYPE_4__ {int resp_count; int resp_size; int resp_off; TYPE_1__* resp_biov; int resp_error; int req_txid; int req_type; } ;
struct TYPE_3__ {scalar_t__ iov_base; } ;


 int fwctl_response_done () ;
 int fwctl_send_rest (int *,int) ;
 TYPE_2__ rinfo ;
 int roundup (int,int) ;

__attribute__((used)) static int
fwctl_response(uint32_t *retval)
{
 uint32_t *dp;
 ssize_t remlen;

 switch(rinfo.resp_count) {
 case 0:

  *retval = 4*sizeof(uint32_t) +
      roundup(rinfo.resp_size, sizeof(uint32_t));
  rinfo.resp_count++;
  break;
 case 1:
  *retval = rinfo.req_type;
  rinfo.resp_count++;
  break;
 case 2:
  *retval = rinfo.req_txid;
  rinfo.resp_count++;
  break;
 case 3:
  *retval = rinfo.resp_error;
  rinfo.resp_count++;
  break;
 default:
  remlen = rinfo.resp_size - rinfo.resp_off;
  dp = (uint32_t *)
      ((uint8_t *)rinfo.resp_biov->iov_base + rinfo.resp_off);
  if (remlen >= sizeof(uint32_t)) {
   *retval = *dp;
  } else if (remlen > 0) {
   *retval = fwctl_send_rest(dp, remlen);
  }
  rinfo.resp_off += sizeof(uint32_t);
  break;
 }

 if (rinfo.resp_count > 3 &&
     rinfo.resp_off >= rinfo.resp_size) {
  fwctl_response_done();
  return (1);
 }

 return (0);
}
