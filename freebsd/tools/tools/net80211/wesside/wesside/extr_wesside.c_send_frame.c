
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_usec; int tv_sec; } ;
struct TYPE_3__ {int retries; int waiting_ack; TYPE_2__ tsent; int psent; } ;


 int assert (int) ;
 int exit (int) ;
 int free (unsigned char*) ;
 int gettimeofday (TYPE_2__*,int *) ;
 int hexdump (unsigned char*,int) ;
 int inject (int,unsigned char*,int) ;
 scalar_t__ malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int perror (char*) ;
 int printf (char*,int ,int ) ;
 int time_print (char*,int) ;
 TYPE_1__ txstate ;

void send_frame(int tx, unsigned char* buf, int len) {
 static unsigned char* lame = 0;
 static int lamelen = 0;
 static int lastlen = 0;


 if (len == -1) {
  txstate.retries++;

  if (txstate.retries > 10) {
   time_print("ERROR Max retransmists for (%d bytes):\n",
          lastlen);
   hexdump(&lame[0], lastlen);

  }
  len = lastlen;

 }

 else {
  assert(!txstate.waiting_ack);

  if (len > lamelen) {
   if (lame)
    free(lame);

   lame = (unsigned char*) malloc(len);
   if(!lame) {
    perror("malloc()");
    exit(1);
   }

   lamelen = len;
  }

  memcpy(lame, buf, len);
  txstate.retries = 0;
  lastlen = len;
 }

 inject(tx, lame, len);

 txstate.waiting_ack = 1;
 txstate.psent++;
 if (gettimeofday(&txstate.tsent, ((void*)0)) == -1) {
  perror("gettimeofday()");
  exit(1);
 }





}
