
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int REVERSED ;
 int show_rev (int ,struct object_id const*,char const*) ;

__attribute__((used)) static int anti_reference(const char *refname, const struct object_id *oid, int flag, void *cb_data)
{
 show_rev(REVERSED, oid, refname);
 return 0;
}
