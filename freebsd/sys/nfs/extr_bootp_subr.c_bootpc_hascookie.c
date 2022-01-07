
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bootp_packet {int* vend; } ;



__attribute__((used)) static int
bootpc_hascookie(struct bootp_packet *bp)
{

 return (bp->vend[0] == 99 && bp->vend[1] == 130 &&
  bp->vend[2] == 83 && bp->vend[3] == 99);
}
