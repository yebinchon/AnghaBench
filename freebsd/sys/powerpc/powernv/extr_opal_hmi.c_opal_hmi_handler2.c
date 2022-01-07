
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct trapframe {int dummy; } ;


 int OPAL_HANDLE_HMI2 ;
 int OPAL_HMI_FLAGS_TOD_TB_FAIL ;
 int OPAL_SUCCESS ;
 int opal_call (int ,int ) ;
 int panic (char*) ;
 int printf (char*,int) ;
 int vtophys (int*) ;

__attribute__((used)) static int
opal_hmi_handler2(struct trapframe *frame)
{
 uint64_t flags;
 int err;

 flags = 0;
 err = opal_call(OPAL_HANDLE_HMI2, vtophys(&flags));

 if (flags & OPAL_HMI_FLAGS_TOD_TB_FAIL)
  panic("TOD/TB recovery failure");

 if (err == OPAL_SUCCESS)
  return (0);

 printf("HMI handler failed!  OPAL error code: %d\n", err);

 return (-1);
}
