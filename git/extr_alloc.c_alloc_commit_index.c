
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct TYPE_2__ {int commit_count; } ;



__attribute__((used)) static unsigned int alloc_commit_index(struct repository *r)
{
 return r->parsed_objects->commit_count++;
}
