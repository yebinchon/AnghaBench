
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_char ;


 int PO2 (int) ;
 int le16dec (int*) ;

__attribute__((used)) static int
mbr_probe_bpb(u_char *bpb)
{
 uint16_t secsz;
 uint8_t clstsz;


 secsz = le16dec(bpb);
 if (secsz < 512 || secsz > 4096 || !((secsz & (secsz - 1)) == 0))
  return (0);
 clstsz = bpb[2];
 if (clstsz < 1 || clstsz > 128 || !((clstsz & (clstsz - 1)) == 0))
  return (0);


 return (1);
}
