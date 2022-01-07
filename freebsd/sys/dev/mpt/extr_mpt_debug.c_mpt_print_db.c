
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int MPT_WHO (int) ;
 char* mpt_state (int) ;
 char* mpt_who (int ) ;
 int printf (char*,int,char*,char*) ;

void
mpt_print_db(u_int32_t mb)
{

 printf("mpt mailbox: (0x%x) State %s  WhoInit %s\n",
     mb, mpt_state(mb), mpt_who(MPT_WHO(mb)));
}
