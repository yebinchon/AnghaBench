
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int dummy; } ;
struct label {int dummy; } ;



__attribute__((used)) static int
stub_pipe_check_read(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel)
{

 return (0);
}
