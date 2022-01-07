
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int * util; } ;
struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct shortlog {char* common_repo_prefix; scalar_t__ summary; int list; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ UTIL_TO_INT (struct string_list_item*) ;
 int format_subject (struct strbuf*,char const*,char*) ;
 scalar_t__ isspace (char const) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 scalar_t__ starts_with (char const*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 void* strchr (char const*,char) ;
 int string_list_append (int *,char*) ;
 struct string_list_item* string_list_insert (int *,char const*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;
 int * xcalloc (int,int) ;

__attribute__((used)) static void insert_one_record(struct shortlog *log,
         const char *author,
         const char *oneline)
{
 struct string_list_item *item;

 item = string_list_insert(&log->list, author);

 if (log->summary)
  item->util = (void *)(UTIL_TO_INT(item) + 1);
 else {
  const char *dot3 = log->common_repo_prefix;
  char *buffer, *p;
  struct strbuf subject = STRBUF_INIT;
  const char *eol;


  while (*oneline && isspace(*oneline))
   oneline++;
  eol = strchr(oneline, '\n');
  if (!eol)
   eol = oneline + strlen(oneline);
  if (starts_with(oneline, "[PATCH")) {
   char *eob = strchr(oneline, ']');
   if (eob && (!eol || eob < eol))
    oneline = eob + 1;
  }
  while (*oneline && isspace(*oneline) && *oneline != '\n')
   oneline++;
  format_subject(&subject, oneline, " ");
  buffer = strbuf_detach(&subject, ((void*)0));

  if (dot3) {
   int dot3len = strlen(dot3);
   if (dot3len > 5) {
    while ((p = strstr(buffer, dot3)) != ((void*)0)) {
     int taillen = strlen(p) - dot3len;
     memcpy(p, "/.../", 5);
     memmove(p + 5, p + dot3len, taillen + 1);
    }
   }
  }

  if (item->util == ((void*)0))
   item->util = xcalloc(1, sizeof(struct string_list));
  string_list_append(item->util, buffer);
 }
}
