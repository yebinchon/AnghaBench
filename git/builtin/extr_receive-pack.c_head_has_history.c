
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int get_oid (char*,struct object_id*) ;

__attribute__((used)) static int head_has_history(void)
{
 struct object_id oid;

 return !get_oid("HEAD", &oid);
}
