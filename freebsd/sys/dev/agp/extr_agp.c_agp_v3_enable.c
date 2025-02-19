
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int device_t ;


 scalar_t__ AGP_COMMAND ;
 int AGP_MODE_GET_ARQSZ (scalar_t__) ;
 int AGP_MODE_GET_CAL (scalar_t__) ;
 int AGP_MODE_GET_FW (scalar_t__) ;
 int AGP_MODE_GET_RATE (scalar_t__) ;
 int AGP_MODE_GET_RQ (scalar_t__) ;
 scalar_t__ AGP_MODE_SET_AGP (scalar_t__,int) ;
 scalar_t__ AGP_MODE_SET_ARQSZ (scalar_t__,int) ;
 scalar_t__ AGP_MODE_SET_CAL (scalar_t__,int) ;
 scalar_t__ AGP_MODE_SET_FW (scalar_t__,int) ;
 scalar_t__ AGP_MODE_SET_MODE_3 (scalar_t__,int) ;
 scalar_t__ AGP_MODE_SET_RATE (scalar_t__,int) ;
 scalar_t__ AGP_MODE_SET_RQ (int ,int) ;
 scalar_t__ AGP_MODE_SET_SBA (scalar_t__,int) ;
 int AGP_MODE_V3_RATE_4x ;
 int AGP_MODE_V3_RATE_8x ;
 scalar_t__ AGP_STATUS ;
 scalar_t__ agp_find_caps (int ) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int) ;
 scalar_t__ pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int
agp_v3_enable(device_t dev, device_t mdev, u_int32_t mode)
{
 u_int32_t tstatus, mstatus;
 u_int32_t command;
 int rq, sba, fw, rate, arqsz, cal;

 tstatus = pci_read_config(dev, agp_find_caps(dev) + AGP_STATUS, 4);
 mstatus = pci_read_config(mdev, agp_find_caps(mdev) + AGP_STATUS, 4);


 rq = AGP_MODE_GET_RQ(mode);
 if (AGP_MODE_GET_RQ(tstatus) < rq)
  rq = AGP_MODE_GET_RQ(tstatus);
 if (AGP_MODE_GET_RQ(mstatus) < rq)
  rq = AGP_MODE_GET_RQ(mstatus);





 arqsz = AGP_MODE_GET_ARQSZ(mode);
 if (AGP_MODE_GET_ARQSZ(tstatus) > rq)
  rq = AGP_MODE_GET_ARQSZ(tstatus);
 if (AGP_MODE_GET_ARQSZ(mstatus) > rq)
  rq = AGP_MODE_GET_ARQSZ(mstatus);


 cal = AGP_MODE_GET_CAL(tstatus);
 if (AGP_MODE_GET_CAL(mstatus) < cal)
  cal = AGP_MODE_GET_CAL(mstatus);


 sba = 1;


 fw = (AGP_MODE_GET_FW(tstatus)
        & AGP_MODE_GET_FW(mstatus)
        & AGP_MODE_GET_FW(mode));


 rate = (AGP_MODE_GET_RATE(tstatus)
  & AGP_MODE_GET_RATE(mstatus)
  & AGP_MODE_GET_RATE(mode));
 if (rate & AGP_MODE_V3_RATE_8x)
  rate = AGP_MODE_V3_RATE_8x;
 else
  rate = AGP_MODE_V3_RATE_4x;
 if (bootverbose)
  device_printf(dev, "Setting AGP v3 mode %d\n", rate * 4);

 pci_write_config(dev, agp_find_caps(dev) + AGP_COMMAND, 0, 4);


 command = 0;
 command = AGP_MODE_SET_RQ(0, rq);
 command = AGP_MODE_SET_ARQSZ(command, arqsz);
 command = AGP_MODE_SET_CAL(command, cal);
 command = AGP_MODE_SET_SBA(command, sba);
 command = AGP_MODE_SET_FW(command, fw);
 command = AGP_MODE_SET_RATE(command, rate);
 command = AGP_MODE_SET_MODE_3(command, 1);
 command = AGP_MODE_SET_AGP(command, 1);
 pci_write_config(dev, agp_find_caps(dev) + AGP_COMMAND, command, 4);
 pci_write_config(mdev, agp_find_caps(mdev) + AGP_COMMAND, command, 4);

 return 0;
}
