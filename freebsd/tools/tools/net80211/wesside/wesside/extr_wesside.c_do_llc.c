
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int control; int ether_type; } ;
struct TYPE_4__ {TYPE_1__ type_snap; } ;
struct llc {TYPE_2__ llc_un; void* llc_ssap; void* llc_dsap; } ;


 void* LLC_SNAP_LSAP ;
 int htons (unsigned short) ;
 int memset (struct llc*,int ,int) ;

void do_llc(unsigned char* buf, unsigned short type) {
 struct llc* h = (struct llc*) buf;

 memset(h, 0, sizeof(*h));
 h->llc_dsap = LLC_SNAP_LSAP;
 h->llc_ssap = LLC_SNAP_LSAP;
 h->llc_un.type_snap.control = 3;
 h->llc_un.type_snap.ether_type = htons(type);
}
