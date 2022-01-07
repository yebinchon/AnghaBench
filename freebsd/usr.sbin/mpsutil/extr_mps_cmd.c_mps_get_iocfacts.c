
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int IOCStatus; } ;
struct TYPE_11__ {int Function; } ;
typedef TYPE_1__ MPI2_IOC_FACTS_REQUEST ;
typedef TYPE_2__ MPI2_IOC_FACTS_REPLY ;


 int EINVAL ;
 int ENOMEM ;
 int IOC_STATUS_SUCCESS (int ) ;
 int MPI2_FUNCTION_IOC_FACTS ;
 int bzero (TYPE_1__*,int) ;
 int errno ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int mps_pass_command (int,TYPE_1__*,int,TYPE_2__*,int,int *,int ,int *,int ,int) ;
 int mps_user_command (int,TYPE_1__*,int,TYPE_2__*,int,int *,int ,int ) ;

MPI2_IOC_FACTS_REPLY *
mps_get_iocfacts(int fd)
{
 MPI2_IOC_FACTS_REPLY *facts;
 MPI2_IOC_FACTS_REQUEST req;
 int error;

 facts = malloc(sizeof(MPI2_IOC_FACTS_REPLY));
 if (facts == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }

 bzero(&req, sizeof(MPI2_IOC_FACTS_REQUEST));
 req.Function = MPI2_FUNCTION_IOC_FACTS;


 error = mps_pass_command(fd, &req, sizeof(MPI2_IOC_FACTS_REQUEST),
     facts, sizeof(MPI2_IOC_FACTS_REPLY), ((void*)0), 0, ((void*)0), 0, 10);




 if (error) {
  free(facts);
  return (((void*)0));
 }

 if (!IOC_STATUS_SUCCESS(facts->IOCStatus)) {
  free(facts);
  errno = EINVAL;
  return (((void*)0));
 }
 return (facts);
}
