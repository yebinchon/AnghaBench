
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int nid_t ;
typedef int device_t ;


 int HDA_CMD_SET_COEFF_INDEX (int ,int ,int ) ;
 int HDA_CMD_SET_PROCESSING_COEFF (int ,int ,int ) ;
 int hda_command (int ,int ) ;

__attribute__((used)) static uint32_t
hdaa_write_coef(device_t dev, nid_t nid, uint16_t idx, uint16_t val)
{

 hda_command(dev, HDA_CMD_SET_COEFF_INDEX(0, nid, idx));
 return (hda_command(dev, HDA_CMD_SET_PROCESSING_COEFF(0, nid, val)));
}
