
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* gss_channel_bindings_t ;
typedef int bool_t ;
struct TYPE_13__ {int x_op; } ;
typedef TYPE_2__ XDR ;
struct TYPE_12__ {int application_data; int acceptor_address; int initiator_address; int acceptor_addrtype; int initiator_addrtype; } ;


 int FALSE ;
 TYPE_1__* GSS_C_NO_CHANNEL_BINDINGS ;
 int TRUE ;



 TYPE_1__* mem_alloc (int) ;
 int mem_free (TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int xdr_bool (TYPE_2__*,int *) ;
 int xdr_gss_buffer_desc (TYPE_2__*,int *) ;
 int xdr_uint32_t (TYPE_2__*,int *) ;

bool_t
xdr_gss_channel_bindings_t(XDR *xdrs, gss_channel_bindings_t *chp)
{
 gss_channel_bindings_t ch;
 bool_t is_null;

 switch (xdrs->x_op) {
 case 129:
  ch = *chp;
  if (ch) {
   is_null = FALSE;
   if (!xdr_bool(xdrs, &is_null)
       || !xdr_uint32_t(xdrs, &ch->initiator_addrtype)
       || !xdr_gss_buffer_desc(xdrs,
    &ch->initiator_address)
       || !xdr_uint32_t(xdrs, &ch->acceptor_addrtype)
       || !xdr_gss_buffer_desc(xdrs,
    &ch->acceptor_address)
       || !xdr_gss_buffer_desc(xdrs,
    &ch->application_data))
    return (FALSE);
  } else {
   is_null = TRUE;
   if (!xdr_bool(xdrs, &is_null))
    return (FALSE);
  }
  break;

 case 130:
  if (!xdr_bool(xdrs, &is_null))
   return (FALSE);
  if (is_null) {
   *chp = GSS_C_NO_CHANNEL_BINDINGS;
  } else {
   ch = mem_alloc(sizeof(*ch));
   memset(ch, 0, sizeof(*ch));
   if (!xdr_uint32_t(xdrs, &ch->initiator_addrtype)
       || !xdr_gss_buffer_desc(xdrs,
    &ch->initiator_address)
       || !xdr_uint32_t(xdrs, &ch->acceptor_addrtype)
       || !xdr_gss_buffer_desc(xdrs,
    &ch->acceptor_address)
       || !xdr_gss_buffer_desc(xdrs,
    &ch->application_data)) {
    mem_free(ch, sizeof(*ch));
    return (FALSE);
   }
   *chp = ch;
  }
  break;

 case 128:
  ch = *chp;
  if (ch) {
   xdr_gss_buffer_desc(xdrs, &ch->initiator_address);
   xdr_gss_buffer_desc(xdrs, &ch->acceptor_address);
   xdr_gss_buffer_desc(xdrs, &ch->application_data);
   mem_free(ch, sizeof(*ch));
  }
 }

 return (TRUE);
}
