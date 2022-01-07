
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int new_unrhdr (int ,int ,int *) ;
 int pts_pool ;

__attribute__((used)) static void
pts_init(void *unused)
{

 pts_pool = new_unrhdr(0, INT_MAX, ((void*)0));
}
