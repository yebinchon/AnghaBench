
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mount {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
unionfs_checkexp(struct mount *mp, struct sockaddr *nam, int *extflagsp,
    struct ucred **credanonp, int *numsecflavors, int **secflavors)
{
 return (EOPNOTSUPP);
}
