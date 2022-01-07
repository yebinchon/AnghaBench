
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ENXIO ;
 int MSR_AMDK7_FIDVID_STATUS ;
 scalar_t__ PN8_STA_PENDING (int ) ;
 int rdmsr (int ) ;

__attribute__((used)) static int
pn8_read_pending_wait(uint64_t *status)
{
 int i = 10000;

 do
  *status = rdmsr(MSR_AMDK7_FIDVID_STATUS);
 while (PN8_STA_PENDING(*status) && --i);

 return (i == 0 ? ENXIO : 0);
}
