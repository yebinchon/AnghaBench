
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct msqid_kernel {int dummy; } ;
struct msg {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_SYSV_MSG ;
 int MAGIC_SYSV_MSQ ;
 int sysvmsg_create ;

__attribute__((used)) static void
test_sysvmsg_create(struct ucred *cred, struct msqid_kernel *msqkptr,
    struct label *msqlabel, struct msg *msgptr, struct label *msglabel)
{

 LABEL_CHECK(msglabel, MAGIC_SYSV_MSG);
 LABEL_CHECK(msqlabel, MAGIC_SYSV_MSQ);
 COUNTER_INC(sysvmsg_create);
}
