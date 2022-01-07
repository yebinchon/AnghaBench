
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_rx_general_stats {int * noise; } ;


 int le32toh (int ) ;

__attribute__((used)) static int
iwn_get_noise(const struct iwn_rx_general_stats *stats)
{
 int i, total, nbant, noise;

 total = nbant = 0;
 for (i = 0; i < 3; i++) {
  if ((noise = le32toh(stats->noise[i]) & 0xff) == 0)
   continue;
  total += noise;
  nbant++;
 }

 return (nbant == 0) ? -127 : (total / nbant) - 107;
}
