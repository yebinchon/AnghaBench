
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct ksem {int dummy; } ;
typedef int mode_t ;



__attribute__((used)) static int
stub_posixsem_check_setmode(struct ucred *cred, struct ksem *ks,
    struct label *kslabel, mode_t mode)
{

 return (0);
}
