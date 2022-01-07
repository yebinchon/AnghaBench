
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int dummy; } ;
struct mqfs_info {struct unrhdr* mi_unrhdr; } ;


 int delete_unrhdr (struct unrhdr*) ;

__attribute__((used)) static void
mqfs_fileno_uninit(struct mqfs_info *mi)
{
 struct unrhdr *up;

 up = mi->mi_unrhdr;
 mi->mi_unrhdr = ((void*)0);
 delete_unrhdr(up);
}
