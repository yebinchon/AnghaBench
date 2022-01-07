
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_store_data {int* seen; int parsed_nr; int seen_nr; TYPE_1__* parsed; } ;
typedef enum config_event_t { ____Placeholder_config_event_t } config_event_t ;
struct TYPE_2__ {int type; size_t begin; size_t end; scalar_t__ is_keys_section; } ;


 int CONFIG_EVENT_COMMENT ;
 int CONFIG_EVENT_ENTRY ;
 int CONFIG_EVENT_SECTION ;

__attribute__((used)) static void maybe_remove_section(struct config_store_data *store,
     size_t *begin_offset, size_t *end_offset,
     int *seen_ptr)
{
 size_t begin;
 int i, seen, section_seen = 0;





 seen = *seen_ptr;
 for (i = store->seen[seen]; i > 0; i--) {
  enum config_event_t type = store->parsed[i - 1].type;

  if (type == CONFIG_EVENT_COMMENT)

   return;
  if (type == CONFIG_EVENT_ENTRY) {
   if (!section_seen)

    return;

   break;
  }
  if (type == CONFIG_EVENT_SECTION) {
   if (!store->parsed[i - 1].is_keys_section)
    break;
   section_seen = 1;
  }
 }
 begin = store->parsed[i].begin;






 for (i = store->seen[seen] + 1; i < store->parsed_nr; i++) {
  enum config_event_t type = store->parsed[i].type;

  if (type == CONFIG_EVENT_COMMENT)
   return;
  if (type == CONFIG_EVENT_SECTION) {
   if (store->parsed[i].is_keys_section)
    continue;
   break;
  }
  if (type == CONFIG_EVENT_ENTRY) {
   if (++seen < store->seen_nr &&
       i == store->seen[seen])

    continue;

   return;
  }
 }






 *seen_ptr = seen;
 *begin_offset = begin;
 if (i < store->parsed_nr)
  *end_offset = store->parsed[i].begin;
 else
  *end_offset = store->parsed[store->parsed_nr - 1].end;
}
