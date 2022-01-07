
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int pushurl_nr; char** pushurl; char** url; int url_nr; } ;



__attribute__((used)) static int push_url_of_remote(struct remote *remote, const char ***url_p)
{
 if (remote->pushurl_nr) {
  *url_p = remote->pushurl;
  return remote->pushurl_nr;
 }
 *url_p = remote->url;
 return remote->url_nr;
}
