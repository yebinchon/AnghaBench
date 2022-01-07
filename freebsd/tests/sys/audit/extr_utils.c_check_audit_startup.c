
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
typedef int FILE ;


 int check_auditpipe (struct pollfd*,char const*,int *) ;

__attribute__((used)) static void
check_audit_startup(struct pollfd fd[], const char *auditrgx, FILE *pipestream){
 check_auditpipe(fd, auditrgx, pipestream);
}
