
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_BF_REGS_PER_PAGE ;
 int NUM_DRIVER_UARS ;
 int NUM_LOW_LAT_UUARS ;

__attribute__((used)) static int need_uuar_lock(int uuarn)
{
 int tot_uuars = NUM_DRIVER_UARS * MLX5_BF_REGS_PER_PAGE;

 if (uuarn == 0 || tot_uuars - NUM_LOW_LAT_UUARS)
  return 0;

 return 1;
}
