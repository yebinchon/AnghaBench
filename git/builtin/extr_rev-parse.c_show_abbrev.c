
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int NORMAL ;
 int show_rev (int ,struct object_id const*,int *) ;

__attribute__((used)) static int show_abbrev(const struct object_id *oid, void *cb_data)
{
 show_rev(NORMAL, oid, ((void*)0));
 return 0;
}
