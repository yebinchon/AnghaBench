
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diffline {struct diffline* right; struct diffline* left; } ;


 int free (struct diffline*) ;

__attribute__((used)) static void
freediff(struct diffline *diffp)
{

 free(diffp->left);
 free(diffp->right);
 free(diffp);
}
