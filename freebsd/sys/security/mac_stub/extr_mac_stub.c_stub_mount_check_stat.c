
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct label {int dummy; } ;



__attribute__((used)) static int
stub_mount_check_stat(struct ucred *cred, struct mount *mp,
    struct label *mplabel)
{

 return (0);
}
