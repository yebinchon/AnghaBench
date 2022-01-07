
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
struct mount {int dummy; } ;



__attribute__((used)) static int
mqfs_statfs(struct mount *mp, struct statfs *sbp)
{

 return (0);
}
