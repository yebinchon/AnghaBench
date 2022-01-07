
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char const* buf; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int hexsz; } ;


 int count_ident (char const*,size_t) ;
 int free (char*) ;
 int hash_object_file (char const*,size_t,char*,struct object_id*) ;
 char* memchr (char const*,char,int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 char* oid_to_hex (struct object_id*) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int ident_to_worktree(const char *src, size_t len,
        struct strbuf *buf, int ident)
{
 struct object_id oid;
 char *to_free = ((void*)0), *dollar, *spc;
 int cnt;

 if (!ident)
  return 0;

 cnt = count_ident(src, len);
 if (!cnt)
  return 0;


 if (src == buf->buf)
  to_free = strbuf_detach(buf, ((void*)0));
 hash_object_file(src, len, "blob", &oid);

 strbuf_grow(buf, len + cnt * (the_hash_algo->hexsz + 3));
 for (;;) {

  dollar = memchr(src, '$', len);
  if (!dollar)
   break;
  strbuf_add(buf, src, dollar + 1 - src);
  len -= dollar + 1 - src;
  src = dollar + 1;


  if (len < 3 || memcmp("Id", src, 2))
   continue;


  if (src[2] == '$') {
   src += 3;
   len -= 3;
  } else if (src[2] == ':') {







   dollar = memchr(src + 3, '$', len - 3);
   if (!dollar) {

    break;
   }

   if (memchr(src + 3, '\n', dollar - src - 3)) {

    continue;
   }

   spc = memchr(src + 4, ' ', dollar - src - 4);
   if (spc && spc < dollar-1) {




    continue;
   }

   len -= dollar + 1 - src;
   src = dollar + 1;
  } else {

   continue;
  }


  strbuf_addstr(buf, "Id: ");
  strbuf_addstr(buf, oid_to_hex(&oid));
  strbuf_addstr(buf, " $");
 }
 strbuf_add(buf, src, len);

 free(to_free);
 return 1;
}
