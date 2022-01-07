
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct componentname {int cn_namelen; char* cn_nameptr; } ;



__attribute__((used)) static int
ext2_is_dot_entry(struct componentname *cnp)
{
 if (cnp->cn_namelen <= 2 && cnp->cn_nameptr[0] == '.' &&
     (cnp->cn_nameptr[1] == '.' || cnp->cn_nameptr[1] == '\0'))
  return (1);
 return (0);
}
