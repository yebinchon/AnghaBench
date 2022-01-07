
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int len; int* ptr; int extlist; int chan; } ;
typedef TYPE_1__ packet_t ;
struct TYPE_8__ {size_t* ptr; size_t len; } ;
typedef TYPE_2__ exthdr_t ;



 scalar_t__ BNEP_TYPE_EXT (int) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 size_t bnep_recv_control (int ,size_t*,size_t,int) ;
 int log_err (char*) ;
 TYPE_2__* malloc (int) ;
 int next ;
 int packet_adj (TYPE_1__*,size_t) ;

__attribute__((used)) static bool
bnep_recv_extension(packet_t *pkt)
{
 exthdr_t *eh;
 size_t len, size;
 uint8_t type;

 do {
  if (pkt->len < 2)
   return 0;

  type = pkt->ptr[0];
  size = pkt->ptr[1];

  if (pkt->len < size + 2)
   return 0;

  switch (type) {
  case 128:
   len = bnep_recv_control(pkt->chan, pkt->ptr + 2, size, 1);
   if (len != size)
    log_err("ignored spurious data in exthdr");

   break;

  default:





   eh = malloc(sizeof(exthdr_t));
   if (eh == ((void*)0)) {
    log_err("exthdr malloc() failed: %m");
    break;
   }

   eh->ptr = pkt->ptr;
   eh->len = size;
   STAILQ_INSERT_TAIL(&pkt->extlist, eh, next);
   break;
  }

  packet_adj(pkt, size + 2);
 } while (BNEP_TYPE_EXT(type));

 return 1;
}
