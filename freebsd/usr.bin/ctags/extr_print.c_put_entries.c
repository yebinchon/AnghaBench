
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* entry; char* file; int lno; char* pat; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef TYPE_1__ NODE ;


 int fprintf (int ,char*,char*,char*,int,char*,int) ;
 int outf ;
 int printf (char*,char*,...) ;
 int searchar ;
 scalar_t__ vflag ;
 scalar_t__ xflag ;

void
put_entries(NODE *node)
{

 if (node->left)
  put_entries(node->left);
 if (vflag)
  printf("%s %s %d\n",
      node->entry, node->file, (node->lno + 63) / 64);
 else if (xflag)
  printf("%-16s %4d %-16s %s\n",
      node->entry, node->lno, node->file, node->pat);
 else
  fprintf(outf, "%s\t%s\t%c^%s%c\n",
      node->entry, node->file, searchar, node->pat, searchar);
 if (node->right)
  put_entries(node->right);
}
