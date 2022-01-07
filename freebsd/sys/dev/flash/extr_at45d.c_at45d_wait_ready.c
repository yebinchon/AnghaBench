
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timeval {scalar_t__ tv_sec; } ;
typedef int device_t ;


 int ETIMEDOUT ;
 int STATUS_READY ;
 int at45d_get_status (int ,int*) ;
 int getmicrouptime (struct timeval*) ;

__attribute__((used)) static int
at45d_wait_ready(device_t dev, uint8_t *status)
{
 struct timeval now, tout;
 int err;

 getmicrouptime(&tout);
 tout.tv_sec += 3;
 do {
  getmicrouptime(&now);
  if (now.tv_sec > tout.tv_sec)
   err = ETIMEDOUT;
  else
   err = at45d_get_status(dev, status);
 } while (err == 0 && !(*status & STATUS_READY));
 return (err);
}
