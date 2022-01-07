
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_softc {int midi_number; int * midis; } ;
typedef int kobj_t ;


 int EINVAL ;

__attribute__((used)) static int
seq_fetch_mid(struct seq_softc *scp, int unit, kobj_t *md)
{

 if (unit >= scp->midi_number || unit < 0)
  return EINVAL;

 *md = scp->midis[unit];

 return 0;
}
