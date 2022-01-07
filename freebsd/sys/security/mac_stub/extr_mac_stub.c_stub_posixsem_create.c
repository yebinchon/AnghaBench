
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct ksem {int dummy; } ;



__attribute__((used)) static void
stub_posixsem_create(struct ucred *cred, struct ksem *ks,
    struct label *kslabel)
{

}
