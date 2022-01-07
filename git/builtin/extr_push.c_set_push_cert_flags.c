
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRANSPORT_PUSH_CERT_ALWAYS ;
 int TRANSPORT_PUSH_CERT_IF_ASKED ;

__attribute__((used)) static void set_push_cert_flags(int *flags, int v)
{
 switch (v) {
 case 128:
  *flags &= ~(TRANSPORT_PUSH_CERT_ALWAYS | TRANSPORT_PUSH_CERT_IF_ASKED);
  break;
 case 130:
  *flags |= TRANSPORT_PUSH_CERT_ALWAYS;
  *flags &= ~TRANSPORT_PUSH_CERT_IF_ASKED;
  break;
 case 129:
  *flags |= TRANSPORT_PUSH_CERT_IF_ASKED;
  *flags &= ~TRANSPORT_PUSH_CERT_ALWAYS;
  break;
 }
}
