
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ icl_ncons ;
 int icl_pdu_zone ;
 int icl_unregister (char*,int) ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static int
icl_soft_unload(void)
{

 if (icl_ncons != 0)
  return (EBUSY);

 icl_unregister("none", 0);




 uma_zdestroy(icl_pdu_zone);

 return (0);
}
