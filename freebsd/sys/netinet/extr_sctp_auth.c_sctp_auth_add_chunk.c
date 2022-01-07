
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int* chunks; int num_chunks; } ;
typedef TYPE_1__ sctp_auth_chklist_t ;


 int SCTPDBG (int ,char*,size_t,size_t) ;
 size_t SCTP_AUTHENTICATION ;
 int SCTP_DEBUG_AUTH1 ;
 size_t SCTP_INITIATION ;
 size_t SCTP_INITIATION_ACK ;
 size_t SCTP_SHUTDOWN_COMPLETE ;

int
sctp_auth_add_chunk(uint8_t chunk, sctp_auth_chklist_t *list)
{
 if (list == ((void*)0))
  return (-1);


 if ((chunk == SCTP_INITIATION) ||
     (chunk == SCTP_INITIATION_ACK) ||
     (chunk == SCTP_SHUTDOWN_COMPLETE) ||
     (chunk == SCTP_AUTHENTICATION)) {
  return (-1);
 }
 if (list->chunks[chunk] == 0) {
  list->chunks[chunk] = 1;
  list->num_chunks++;
  SCTPDBG(SCTP_DEBUG_AUTH1,
      "SCTP: added chunk %u (0x%02x) to Auth list\n",
      chunk, chunk);
 }
 return (0);
}
