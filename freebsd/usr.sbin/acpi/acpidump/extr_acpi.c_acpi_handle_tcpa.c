
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
struct TCPAevent {int event_size; scalar_t__ event_type; } ;
struct TYPE_7__ {scalar_t__ log_max_len; scalar_t__ log_start_addr; } ;
struct TYPE_6__ {scalar_t__ log_max_len; scalar_t__ log_start_addr; } ;
struct TCPAbody {int platform_class; TYPE_2__ server; TYPE_1__ client; } ;
struct TYPE_8__ {int Revision; } ;
typedef TYPE_3__ ACPI_TABLE_HEADER ;




 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 scalar_t__ acpi_map_physical (scalar_t__,scalar_t__) ;
 int acpi_print_sdt (TYPE_3__*) ;
 int acpi_print_tcpa (struct TCPAevent*) ;
 scalar_t__ isprint (unsigned char) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_handle_tcpa(ACPI_TABLE_HEADER *sdp)
{
 struct TCPAbody *tcpa;
 struct TCPAevent *event;
 uintmax_t len, paddr;
 unsigned char *vaddr = ((void*)0);
 unsigned char *vend = ((void*)0);

 printf(BEGIN_COMMENT);
 acpi_print_sdt(sdp);
 tcpa = (struct TCPAbody *) sdp;

 switch (tcpa->platform_class) {
 case 129:
  len = tcpa->client.log_max_len;
  paddr = tcpa->client.log_start_addr;
  break;

 case 128:
  len = tcpa->server.log_max_len;
  paddr = tcpa->server.log_start_addr;
  break;

 default:
  printf("XXX");
  printf(END_COMMENT);
  return;
 }
 printf("\tClass %u Base Address 0x%jx Length %ju\n\n",
     tcpa->platform_class, paddr, len);

 if (len == 0) {
  printf("\tEmpty TCPA table\n");
  printf(END_COMMENT);
  return;
 }
 if(sdp->Revision == 1){
  printf("\tOLD TCPA spec log found. Dumping not supported.\n");
  printf(END_COMMENT);
  return;
 }

 vaddr = (unsigned char *)acpi_map_physical(paddr, len);
 vend = vaddr + len;

 while (vaddr != ((void*)0)) {
  if ((vaddr + sizeof(struct TCPAevent) >= vend)||
      (vaddr + sizeof(struct TCPAevent) < vaddr))
   break;
  event = (struct TCPAevent *)(void *)vaddr;
  if (vaddr + event->event_size >= vend)
   break;
  if (vaddr + event->event_size < vaddr)
   break;
  if (event->event_type == 0 && event->event_size == 0)
   break;
  acpi_print_tcpa(event);

  vaddr += sizeof(struct TCPAevent) + event->event_size;
 }

 printf(END_COMMENT);
}
