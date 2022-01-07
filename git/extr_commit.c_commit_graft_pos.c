
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct TYPE_2__ {int grafts_nr; int grafts; } ;


 int commit_graft_sha1_access ;
 int sha1_pos (unsigned char const*,int ,int ,int ) ;

__attribute__((used)) static int commit_graft_pos(struct repository *r, const unsigned char *sha1)
{
 return sha1_pos(sha1, r->parsed_objects->grafts,
   r->parsed_objects->grafts_nr,
   commit_graft_sha1_access);
}
