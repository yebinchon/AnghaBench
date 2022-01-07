
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int8_t ;
struct scsi_inquiry_data {int dummy; } ;


 scalar_t__ SID_QUAL (struct scsi_inquiry_data const*) ;
 scalar_t__ SID_QUAL_BAD_LU ;
 scalar_t__ SID_TYPE (struct scsi_inquiry_data const*) ;
 scalar_t__ T_NODEVICE ;

__attribute__((used)) static uint32_t
is_scsi_valid(const struct scsi_inquiry_data *inq_data)
{
 u_int8_t type;

 type = SID_TYPE(inq_data);
 if (type == T_NODEVICE)
  return (0);
 if (SID_QUAL(inq_data) == SID_QUAL_BAD_LU)
  return (0);
 return (1);
}
