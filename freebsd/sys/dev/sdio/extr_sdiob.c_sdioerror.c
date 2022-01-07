
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int32_t ;


 int cam_periph_error (union ccb*,int ,int ) ;

__attribute__((used)) static int
sdioerror(union ccb *ccb, u_int32_t cam_flags, u_int32_t sense_flags)
{

 return (cam_periph_error(ccb, cam_flags, sense_flags));
}
