
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int * value; scalar_t__ length; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int M_GSSAPI ;
 int free (int *,int ) ;

OM_uint32
gss_release_buffer(OM_uint32 *minor_status, gss_buffer_t buffer)
{

 *minor_status = 0;
 if (buffer->value) {
  free(buffer->value, M_GSSAPI);
 }
 buffer->length = 0;
 buffer->value = ((void*)0);

 return (GSS_S_COMPLETE);
}
