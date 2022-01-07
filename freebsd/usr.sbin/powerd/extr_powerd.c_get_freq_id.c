
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
get_freq_id(int freq, int *freqs, int numfreqs)
{
 int i = 1;

 while (i < numfreqs) {
  if (freqs[i] < freq)
   break;
  i++;
 }
 return (i - 1);
}
