
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rangeset {int dummy; } ;


 int rangeset_check (struct rangeset*) ;
 int rangeset_remove_all (struct rangeset*) ;

void
rangeset_fini(struct rangeset *rs)
{

 rangeset_check(rs);
 rangeset_remove_all(rs);
}
