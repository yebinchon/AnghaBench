
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int compare_node (struct node*,struct node*,int) ;
 int indent (int) ;
 int print_node (struct node*) ;
 int printf (char*) ;

__attribute__((used)) static int
compare_node2(struct node *n1, struct node *n2, int in)
{
 int i;

 i = compare_node(n1, n2, in);
 if (i) {
  printf("1>");
  indent(in);
  print_node(n1);
  printf("2>");
  indent(in);
  print_node(n2);
 }
 return (i);
}
