
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static int
nfscl_seq(uint32_t seqid1, uint32_t seqid2)
{

 if (seqid2 > seqid1 && (seqid2 - seqid1) >= 0x7fffffff)

  return (0);
 if (seqid1 > seqid2 && (seqid1 - seqid2) >= 0x7fffffff)

  return (1);
 if (seqid1 <= seqid2)
  return (1);
 return (0);
}
