
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {struct autofs_node* v_data; } ;
struct autofs_node {char* an_name; int an_fileno; int an_cached; int an_wildcards; } ;


 int printf (char*,char*,int,int,int) ;

__attribute__((used)) static int
autofs_print(struct vop_print_args *ap)
{
 struct vnode *vp;
 struct autofs_node *anp;

 vp = ap->a_vp;
 anp = vp->v_data;

 printf("    name \"%s\", fileno %d, cached %d, wildcards %d\n",
     anp->an_name, anp->an_fileno, anp->an_cached, anp->an_wildcards);

 return (0);
}
