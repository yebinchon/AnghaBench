
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;


 int OPAL_HANDLE_HMI ;
 int OPAL_SUCCESS ;
 int opal_call (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
opal_hmi_handler(struct trapframe *frame)
{
 int err;

 err = opal_call(OPAL_HANDLE_HMI);

 if (err == OPAL_SUCCESS)
  return (0);

 printf("HMI handler failed!  OPAL error code: %d\n", err);

 return (-1);
}
