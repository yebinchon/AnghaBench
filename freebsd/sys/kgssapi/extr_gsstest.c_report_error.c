
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; scalar_t__ length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef scalar_t__ gss_OID ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_GSS_CODE ;
 int GSS_C_MECH_CODE ;
 scalar_t__ GSS_C_NO_OID ;
 scalar_t__ GSS_ERROR (scalar_t__) ;
 scalar_t__ gss_display_status (scalar_t__*,scalar_t__,int ,scalar_t__,scalar_t__*,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 int uprintf (char*,int,char*) ;

__attribute__((used)) static void
report_error(gss_OID mech, OM_uint32 maj, OM_uint32 min)
{
 OM_uint32 maj_stat, min_stat;
 OM_uint32 message_context;
 gss_buffer_desc buf;

 uprintf("major_stat=%d, minor_stat=%d\n", maj, min);
 message_context = 0;
 do {
  maj_stat = gss_display_status(&min_stat, maj,
      GSS_C_GSS_CODE, GSS_C_NO_OID, &message_context, &buf);
  if (GSS_ERROR(maj_stat))
   break;
  uprintf("%.*s\n", (int)buf.length, (char *) buf.value);
  gss_release_buffer(&min_stat, &buf);
 } while (message_context);
 if (mech && min) {
  message_context = 0;
  do {
   maj_stat = gss_display_status(&min_stat, min,
       GSS_C_MECH_CODE, mech, &message_context, &buf);
   if (GSS_ERROR(maj_stat))
    break;
   uprintf("%.*s\n", (int)buf.length, (char *) buf.value);
   gss_release_buffer(&min_stat, &buf);
  } while (message_context);
 }
}
