
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t offset; int * buffer; } ;
typedef TYPE_1__ vpdbuf_t ;
typedef int uint8_t ;



__attribute__((used)) static inline uint8_t *
vpdref(vpdbuf_t *vpd)
{
 return &vpd->buffer[vpd->offset];
}
