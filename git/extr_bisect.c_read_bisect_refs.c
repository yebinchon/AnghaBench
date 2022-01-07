
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int for_each_ref_in (char*,int ,int *) ;
 int register_ref ;

__attribute__((used)) static int read_bisect_refs(void)
{
 return for_each_ref_in("refs/bisect/", register_ref, ((void*)0));
}
