
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cipher; } ;
struct TYPE_3__ {int prga; int len; } ;


 int ARPOP_REQUEST ;



 int SENDING_ASSOC ;
 int SENDING_AUTH ;
 int arpsend ;
 int assert (char*) ;
 int decrypt (int) ;
 TYPE_2__ decryptstate ;
 int discover_prga (int) ;
 int err (int,char*) ;
 int flood_inet (int) ;
 int floodip ;
 int gettimeofday (int *,int *) ;
 int min_prga ;
 int myip ;
 int mymac ;
 char* netip ;
 int netip_arg ;
 TYPE_1__ prgainfo ;
 unsigned char* rtrmac ;
 int send_arp (int,int ,int ,int ,char*,char*) ;
 int send_assoc (int) ;
 int send_auth (int) ;
 int send_frame (int,int ,int ) ;
 int state ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int taptx ;
 int taptx_len ;
 int time_print (char*,char*) ;

void can_write(int tx) {
 static char arp_ip[16];

 switch (state) {
  case 130:
   send_auth(tx);
   state = SENDING_AUTH;
   break;

  case 128:
   send_assoc(tx);
   state = SENDING_ASSOC;
   break;

  case 129:
   if (prgainfo.prga && prgainfo.len < min_prga) {
    discover_prga(tx);
    break;
   }

   if (decryptstate.cipher) {
    decrypt(tx);
    break;
   }

   if (!prgainfo.prga)
    break;

   if (taptx_len) {
    send_frame(tx, taptx, taptx_len);
    taptx_len = 0;
    break;
   }


   if (netip && !rtrmac) {
    char* ptr;

    strcpy(arp_ip, netip);
    if (!netip_arg) {
     ptr = strchr(arp_ip, '.');
     assert(ptr);
     ptr = strchr(++ptr, '.');
     assert(ptr);
     ptr = strchr(++ptr, '.');
     assert(ptr);
     strcpy(++ptr, "1");
    }

    if (gettimeofday(&arpsend, ((void*)0)) == -1)
     err(1, "gettimeofday()");

    time_print("Sending arp request for: %s\n", arp_ip);
    send_arp(tx, ARPOP_REQUEST, myip, mymac,
      arp_ip, "\x00\x00\x00\x00\x00\x00");


    rtrmac = (unsigned char*)1;
    break;
   }


   if (rtrmac > (unsigned char*)1 && netip) {
    if (floodip)
     flood_inet(tx);
    else {




     send_arp(tx, ARPOP_REQUEST, myip, mymac,
       arp_ip, "\x00\x00\x00\x00\x00\x00");
    }

    break;
   }

   break;
 }
}
