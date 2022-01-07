
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int freq_info ;
typedef int device_t ;
struct TYPE_3__ {int id32; scalar_t__ vendor_id; size_t tablen; int * freqtab; } ;
typedef TYPE_1__ cpu_info ;


 int EOPNOTSUPP ;
 TYPE_1__* ESTprocs ;
 scalar_t__ cpu_vendor_id ;
 int device_printf (int ,char*) ;
 int * est_get_current (int *,size_t) ;

__attribute__((used)) static int
est_table_info(device_t dev, uint64_t msr, freq_info **freqs, size_t *freqslen)
{
 cpu_info *p;
 uint32_t id;


 id = msr >> 32;
 for (p = ESTprocs; p->id32 != 0; p++) {
  if (p->vendor_id == cpu_vendor_id && p->id32 == id)
   break;
 }
 if (p->id32 == 0)
  return (EOPNOTSUPP);


 if (est_get_current(p->freqtab, p->tablen) == ((void*)0)) {
  device_printf(dev, "current setting not found in table\n");
  return (EOPNOTSUPP);
 }

 *freqs = p->freqtab;
 *freqslen = p->tablen;
 return (0);
}
