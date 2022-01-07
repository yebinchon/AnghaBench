
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int die (char*,char*) ;
 char* oid_to_hex (int *) ;
 scalar_t__ parse_commit (struct commit*) ;

void parse_commit_or_die(struct commit *item)
{
 if (parse_commit(item))
  die("unable to parse commit %s",
      item ? oid_to_hex(&item->object.oid) : "(null)");
}
