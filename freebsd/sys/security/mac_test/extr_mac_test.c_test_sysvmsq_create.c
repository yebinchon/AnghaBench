
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct msqid_kernel {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_SYSV_MSQ ;
 int sysvmsq_create ;

__attribute__((used)) static void
test_sysvmsq_create(struct ucred *cred,
    struct msqid_kernel *msqkptr, struct label *msqlabel)
{

 LABEL_CHECK(msqlabel, MAGIC_SYSV_MSQ);
 COUNTER_INC(sysvmsq_create);
}
