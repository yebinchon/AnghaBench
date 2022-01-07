
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; struct string_list* util; } ;
struct string_list {int nr; int strdup_strings; struct string_list_item* items; } ;
struct strbuf {int len; int buf; } ;
struct shortlog {int mailmap; struct string_list list; int file; scalar_t__ wrap_lines; scalar_t__ summary; scalar_t__ sort_by_number; } ;


 int QSORT (struct string_list_item*,int,int ) ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ UTIL_TO_INT (struct string_list_item const*) ;
 int add_wrapped_shortlog_msg (struct strbuf*,char const*,struct shortlog*) ;
 int clear_mailmap (int *) ;
 int compare_by_counter ;
 int compare_by_list ;
 int fprintf (int ,char*,...) ;
 int free (struct string_list*) ;
 int fwrite (int ,int ,int,int ) ;
 int putc (char,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int string_list_clear (struct string_list*,int) ;

void shortlog_output(struct shortlog *log)
{
 int i, j;
 struct strbuf sb = STRBUF_INIT;

 if (log->sort_by_number)
  QSORT(log->list.items, log->list.nr,
        log->summary ? compare_by_counter : compare_by_list);
 for (i = 0; i < log->list.nr; i++) {
  const struct string_list_item *item = &log->list.items[i];
  if (log->summary) {
   fprintf(log->file, "%6d\t%s\n",
    (int)UTIL_TO_INT(item), item->string);
  } else {
   struct string_list *onelines = item->util;
   fprintf(log->file, "%s (%d):\n",
    item->string, onelines->nr);
   for (j = onelines->nr - 1; j >= 0; j--) {
    const char *msg = onelines->items[j].string;

    if (log->wrap_lines) {
     strbuf_reset(&sb);
     add_wrapped_shortlog_msg(&sb, msg, log);
     fwrite(sb.buf, sb.len, 1, log->file);
    }
    else
     fprintf(log->file, "      %s\n", msg);
   }
   putc('\n', log->file);
   onelines->strdup_strings = 1;
   string_list_clear(onelines, 0);
   free(onelines);
  }

  log->list.items[i].util = ((void*)0);
 }

 strbuf_release(&sb);
 log->list.strdup_strings = 1;
 string_list_clear(&log->list, 1);
 clear_mailmap(&log->mailmap);
}
