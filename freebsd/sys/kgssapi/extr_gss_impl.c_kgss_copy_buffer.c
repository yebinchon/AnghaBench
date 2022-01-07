
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {int * value; scalar_t__ length; } ;


 int M_GSSAPI ;
 int M_WAITOK ;
 int bcopy (int *,int *,scalar_t__) ;
 int * malloc (scalar_t__,int ,int ) ;

void
kgss_copy_buffer(const gss_buffer_t from, gss_buffer_t to)
{
 to->length = from->length;
 if (from->length) {
  to->value = malloc(from->length, M_GSSAPI, M_WAITOK);
  bcopy(from->value, to->value, from->length);
 } else {
  to->value = ((void*)0);
 }
}
