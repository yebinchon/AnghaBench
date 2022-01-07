
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {scalar_t__ len; int buf; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct TYPE_3__ {int string; struct object_id* util; } ;


 int OBJ_TAG ;
 struct strbuf STRBUF_INIT ;
 int fmt_tag_signature (struct strbuf*,struct strbuf*,char*,unsigned long) ;
 int free (char*) ;
 TYPE_2__ origins ;
 unsigned long parse_signature (char*,unsigned long) ;
 char* read_object_file (struct object_id*,int*,unsigned long*) ;
 int strbuf_add_commented_lines (struct strbuf*,int ,int ) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_insert (struct strbuf*,int ,int ,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (int ) ;
 scalar_t__ verify_signed_buffer (char*,unsigned long,char*,unsigned long,struct strbuf*,int *) ;

__attribute__((used)) static void fmt_merge_msg_sigs(struct strbuf *out)
{
 int i, tag_number = 0, first_tag = 0;
 struct strbuf tagbuf = STRBUF_INIT;

 for (i = 0; i < origins.nr; i++) {
  struct object_id *oid = origins.items[i].util;
  enum object_type type;
  unsigned long size, len;
  char *buf = read_object_file(oid, &type, &size);
  struct strbuf sig = STRBUF_INIT;

  if (!buf || type != OBJ_TAG)
   goto next;
  len = parse_signature(buf, size);

  if (size == len)
   ;
  else if (verify_signed_buffer(buf, len, buf + len, size - len, &sig, ((void*)0))) {
   if (!sig.len)
    strbuf_addstr(&sig, "gpg verification failed.\n");
  }

  if (!tag_number++) {
   fmt_tag_signature(&tagbuf, &sig, buf, len);
   first_tag = i;
  } else {
   if (tag_number == 2) {
    struct strbuf tagline = STRBUF_INIT;
    strbuf_addch(&tagline, '\n');
    strbuf_add_commented_lines(&tagline,
      origins.items[first_tag].string,
      strlen(origins.items[first_tag].string));
    strbuf_insert(&tagbuf, 0, tagline.buf,
           tagline.len);
    strbuf_release(&tagline);
   }
   strbuf_addch(&tagbuf, '\n');
   strbuf_add_commented_lines(&tagbuf,
     origins.items[i].string,
     strlen(origins.items[i].string));
   fmt_tag_signature(&tagbuf, &sig, buf, len);
  }
  strbuf_release(&sig);
 next:
  free(buf);
 }
 if (tagbuf.len) {
  strbuf_addch(out, '\n');
  strbuf_addbuf(out, &tagbuf);
 }
 strbuf_release(&tagbuf);
}
