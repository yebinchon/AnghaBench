
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct remote {int url_nr; char const** url; int pushurl_nr; char** pushurl; int name; } ;
struct TYPE_2__ {int * util; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 void* strbuf_detach (struct strbuf*,int *) ;
 TYPE_1__* string_list_append (struct string_list*,int ) ;

__attribute__((used)) static int get_one_entry(struct remote *remote, void *priv)
{
 struct string_list *list = priv;
 struct strbuf url_buf = STRBUF_INIT;
 const char **url;
 int i, url_nr;

 if (remote->url_nr > 0) {
  strbuf_addf(&url_buf, "%s (fetch)", remote->url[0]);
  string_list_append(list, remote->name)->util =
    strbuf_detach(&url_buf, ((void*)0));
 } else
  string_list_append(list, remote->name)->util = ((void*)0);
 if (remote->pushurl_nr) {
  url = remote->pushurl;
  url_nr = remote->pushurl_nr;
 } else {
  url = remote->url;
  url_nr = remote->url_nr;
 }
 for (i = 0; i < url_nr; i++)
 {
  strbuf_addf(&url_buf, "%s (push)", url[i]);
  string_list_append(list, remote->name)->util =
    strbuf_detach(&url_buf, ((void*)0));
 }

 return 0;
}
