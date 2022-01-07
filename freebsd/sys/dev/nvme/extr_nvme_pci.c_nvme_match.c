
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct _pcsid {scalar_t__ devid; scalar_t__ subdevice; int match_subdevice; } ;



__attribute__((used)) static int
nvme_match(uint32_t devid, uint16_t subdevice, struct _pcsid *ep)
{
 if (devid != ep->devid)
  return 0;

 if (!ep->match_subdevice)
  return 1;

 if (subdevice == ep->subdevice)
  return 1;
 else
  return 0;
}
