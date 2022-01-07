
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
struct child_process {int in; } ;
struct TYPE_2__ {int hexsz; } ;


 int _ (char*) ;
 int die (int ) ;
 char* oid_to_hex (struct object_id const*) ;
 scalar_t__ start_command (struct child_process*) ;
 TYPE_1__* the_hash_algo ;
 int xwrite (int,char*,int) ;

__attribute__((used)) static int write_oid(const struct object_id *oid, struct packed_git *pack,
       uint32_t pos, void *data)
{
 struct child_process *cmd = data;

 if (cmd->in == -1) {
  if (start_command(cmd))
   die(_("could not start pack-objects to repack promisor objects"));
 }

 xwrite(cmd->in, oid_to_hex(oid), the_hash_algo->hexsz);
 xwrite(cmd->in, "\n", 1);
 return 0;
}
