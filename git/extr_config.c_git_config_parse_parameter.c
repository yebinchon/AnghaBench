
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;
typedef scalar_t__ (* config_fn_t ) (char*,char const*,void*) ;


 int _ (char*) ;
 int error (int ,char const*) ;
 int free (char*) ;
 scalar_t__ git_config_parse_key (char*,char**,int *) ;
 int strbuf_list_free (struct strbuf**) ;
 int strbuf_setlen (struct strbuf*,int) ;
 struct strbuf** strbuf_split_str (char const*,char,int) ;
 int strbuf_trim (struct strbuf*) ;

int git_config_parse_parameter(const char *text,
          config_fn_t fn, void *data)
{
 const char *value;
 char *canonical_name;
 struct strbuf **pair;
 int ret;

 pair = strbuf_split_str(text, '=', 2);
 if (!pair[0])
  return error(_("bogus config parameter: %s"), text);

 if (pair[0]->len && pair[0]->buf[pair[0]->len - 1] == '=') {
  strbuf_setlen(pair[0], pair[0]->len - 1);
  value = pair[1] ? pair[1]->buf : "";
 } else {
  value = ((void*)0);
 }

 strbuf_trim(pair[0]);
 if (!pair[0]->len) {
  strbuf_list_free(pair);
  return error(_("bogus config parameter: %s"), text);
 }

 if (git_config_parse_key(pair[0]->buf, &canonical_name, ((void*)0))) {
  ret = -1;
 } else {
  ret = (fn(canonical_name, value, data) < 0) ? -1 : 0;
  free(canonical_name);
 }
 strbuf_list_free(pair);
 return ret;
}
