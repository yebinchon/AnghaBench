
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;
struct packet_reader {int pktlen; int line; } ;
struct oid_array {int dummy; } ;
typedef enum get_remote_heads_state { ____Placeholder_get_remote_heads_state } get_remote_heads_state ;
 int _ (char*) ;
 int annotate_refs_with_symref_info (struct ref*) ;
 int die (int ,...) ;
 int die_initial_contact (int) ;
 int packet_reader_read (struct packet_reader*) ;
 int process_capabilities (int ,int*) ;
 int process_dummy_ref (int ) ;
 int process_ref (int ,int,struct ref***,unsigned int,struct oid_array*) ;
 int process_shallow (int ,int,struct oid_array*) ;

struct ref **get_remote_heads(struct packet_reader *reader,
         struct ref **list, unsigned int flags,
         struct oid_array *extra_have,
         struct oid_array *shallow_points)
{
 struct ref **orig_list = list;
 int len = 0;
 enum get_remote_heads_state state = 134;

 *list = ((void*)0);

 while (state != 135) {
  switch (packet_reader_read(reader)) {
  case 130:
   die_initial_contact(1);
  case 128:
   len = reader->pktlen;
   break;
  case 129:
   state = 135;
   break;
  case 131:
   die(_("invalid packet"));
  }

  switch (state) {
  case 134:
   process_capabilities(reader->line, &len);
   if (process_dummy_ref(reader->line)) {
    state = 132;
    break;
   }
   state = 133;

  case 133:
   if (process_ref(reader->line, len, &list, flags, extra_have))
    break;
   state = 132;

  case 132:
   if (process_shallow(reader->line, len, shallow_points))
    break;
   die(_("protocol error: unexpected '%s'"), reader->line);
  case 135:
   break;
  }
 }

 annotate_refs_with_symref_info(*orig_list);

 return list;
}
