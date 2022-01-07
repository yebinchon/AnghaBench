
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diffline {char* left; char div; char* right; } ;


 int STAILQ_INSERT_TAIL (int *,struct diffline*,int ) ;
 int diffentries ;
 int diffhead ;
 int err (int,char*) ;
 struct diffline* malloc (int) ;

__attribute__((used)) static void
enqueue(char *left, char divider, char *right)
{
 struct diffline *diffp;

 if (!(diffp = malloc(sizeof(struct diffline))))
  err(2, "enqueue");
 diffp->left = left;
 diffp->div = divider;
 diffp->right = right;
 STAILQ_INSERT_TAIL(&diffhead, diffp, diffentries);
}
