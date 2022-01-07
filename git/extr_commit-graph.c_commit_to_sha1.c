
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* hash; } ;
struct TYPE_4__ {TYPE_1__ oid; } ;
struct commit {TYPE_2__ object; } ;



__attribute__((used)) static const unsigned char *commit_to_sha1(size_t index, void *table)
{
 struct commit **commits = table;
 return commits[index]->object.oid.hash;
}
