
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int dummy; } ;
struct mqfs_info {struct unrhdr* mi_unrhdr; } ;


 int INT_MAX ;
 struct unrhdr* new_unrhdr (int,int ,int *) ;

__attribute__((used)) static void
mqfs_fileno_init(struct mqfs_info *mi)
{
 struct unrhdr *up;

 up = new_unrhdr(1, INT_MAX, ((void*)0));
 mi->mi_unrhdr = up;
}
