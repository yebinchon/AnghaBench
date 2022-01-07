
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
typedef int FILE ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 int check_auditpipe (struct pollfd*,char const*,int *) ;
 int fclose (int *) ;

void
check_audit(struct pollfd fd[], const char *auditrgx, FILE *pipestream) {
 check_auditpipe(fd, auditrgx, pipestream);


 ATF_REQUIRE_EQ(0, fclose(pipestream));
}
