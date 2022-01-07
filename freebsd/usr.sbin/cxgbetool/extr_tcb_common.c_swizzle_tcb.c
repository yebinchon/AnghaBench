
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
swizzle_tcb(unsigned char *buf)
{
  int i,j,k;

  for (i=0, j=128-16 ; i<j ; i+=16, j-=16) {
    unsigned char temp;
    for (k=0; k<16; ++k) {
      temp=buf[i+k];
      buf[i+k]=buf[j+k];
      buf[j+k]=temp;
    }
  }
}
