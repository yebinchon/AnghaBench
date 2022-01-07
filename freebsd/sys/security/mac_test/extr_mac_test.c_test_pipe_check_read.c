
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct pipepair {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_PIPE ;
 int pipe_check_read ;

__attribute__((used)) static int
test_pipe_check_read(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(pplabel, MAGIC_PIPE);
 COUNTER_INC(pipe_check_read);

 return (0);
}
