
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* buffer; scalar_t__ checksum; scalar_t__ offset; int length; } ;
typedef TYPE_1__ vpdbuf_t ;
typedef int uint8_t ;
typedef int uint32_t ;


 int VPD_LARGE_RESOURCE_TYPE_R_TAG ;
 int VPD_LARGE_RESOURCE_TYPE_W_TAG ;
 int VPD_SMALL_RESOURCE_TYPE_END_TAG ;
 int ocs_log_test (int *,char*) ;
 int vpddone (TYPE_1__*) ;
 int vpdnext (TYPE_1__*) ;
 int* vpdref (TYPE_1__*) ;

__attribute__((used)) static inline uint8_t *
ocs_find_vpd(uint8_t *vpddata, uint32_t vpddata_length, const char *key)
{
 vpdbuf_t vpdbuf;
 uint8_t *pret = ((void*)0);
 uint8_t c0 = key[0];
 uint8_t c1 = key[1];

 vpdbuf.buffer = (uint8_t*) vpddata;
 vpdbuf.length = vpddata_length;
 vpdbuf.offset = 0;
 vpdbuf.checksum = 0;

 while (!vpddone(&vpdbuf)) {
  int type = vpdnext(&vpdbuf);
  int len_lo;
  int len_hi;
  int len;
  int i;

  if (type == VPD_SMALL_RESOURCE_TYPE_END_TAG) {
   break;
  }

  len_lo = vpdnext(&vpdbuf);
  len_hi = vpdnext(&vpdbuf);
  len = len_lo + (len_hi << 8);

  if ((type == VPD_LARGE_RESOURCE_TYPE_R_TAG) || (type == VPD_LARGE_RESOURCE_TYPE_W_TAG)) {
   while (len > 0) {
    int rc0;
    int rc1;
    int sublen;
    uint8_t *pstart;

    rc0 = vpdnext(&vpdbuf);
    rc1 = vpdnext(&vpdbuf);


    pstart = vpdref(&vpdbuf);

    sublen = vpdnext(&vpdbuf);


    len -= (sublen + 3);


    if ((c0 == rc0) && (c1 == rc1)) {
     pret = pstart;
     for (i = 0; i < sublen; i++) {
      vpdnext(&vpdbuf);
     }

    } else if ('R' == rc0 && 'V' == rc1) {


     for (i = 0; i < sublen; i++) {
      vpdnext(&vpdbuf);
     }


     if (vpdbuf.checksum != 0) {
      ocs_log_test(((void*)0), "checksum error\n");
      return ((void*)0);
     }
    }
    else
     for (i = 0; i < sublen; i++) {
      vpdnext(&vpdbuf);
     }
   }
  }

  for (i = 0; i < len; i++) {
   vpdnext(&vpdbuf);
  }
 }

 return pret;
}
