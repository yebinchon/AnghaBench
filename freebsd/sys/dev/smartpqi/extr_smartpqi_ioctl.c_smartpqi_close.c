
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int PQI_STATUS_SUCCESS ;

__attribute__((used)) static int smartpqi_close(struct cdev *cdev, int flags, int devtype,
  struct thread *td)
{
 int error = PQI_STATUS_SUCCESS;

 return error;
}
