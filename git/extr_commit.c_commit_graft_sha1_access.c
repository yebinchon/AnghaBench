
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char const* hash; } ;
struct commit_graft {TYPE_1__ oid; } ;



__attribute__((used)) static const unsigned char *commit_graft_sha1_access(size_t index, void *table)
{
 struct commit_graft **commit_graft_table = table;
 return commit_graft_table[index]->oid.hash;
}
