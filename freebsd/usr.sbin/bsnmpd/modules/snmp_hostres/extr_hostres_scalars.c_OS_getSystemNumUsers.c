
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct utmpx {scalar_t__ ut_type; } ;


 int SNMP_ERR_NOERROR ;
 scalar_t__ USER_PROCESS ;
 int endutxent () ;
 struct utmpx* getutxent () ;
 int setutxent () ;

__attribute__((used)) static int
OS_getSystemNumUsers(uint32_t *nu)
{
 struct utmpx *utmp;

 setutxent();
 *nu = 0;
 while ((utmp = getutxent()) != ((void*)0)) {
  if (utmp->ut_type == USER_PROCESS)
   (*nu)++;
 }
 endutxent();

 return (SNMP_ERR_NOERROR);
}
