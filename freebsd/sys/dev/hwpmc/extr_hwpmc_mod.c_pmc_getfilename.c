
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int curthread ;
 int vn_fullpath (int ,struct vnode*,char**,char**) ;

__attribute__((used)) static void
pmc_getfilename(struct vnode *v, char **fullpath, char **freepath)
{

 *fullpath = "unknown";
 *freepath = ((void*)0);
 vn_fullpath(curthread, v, fullpath, freepath);
}
