
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ offset; scalar_t__ length; int* buffer; int checksum; } ;
typedef TYPE_1__ vpdbuf_t ;



__attribute__((used)) static inline int
vpdnext(vpdbuf_t *vpd)
{
 int rc = -1;
 if (vpd->offset < vpd->length) {
  rc = vpd->buffer[vpd->offset++];
  vpd->checksum += rc;
 }
 return rc;
}
