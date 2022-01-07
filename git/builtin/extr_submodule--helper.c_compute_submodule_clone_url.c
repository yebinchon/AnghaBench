
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int free (char*) ;
 char* get_default_remote () ;
 scalar_t__ git_config_get_string (int ,char**) ;
 char* relative_url (char*,char const*,int *) ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int warning (int ,int ) ;
 char* xgetcwd () ;

__attribute__((used)) static char *compute_submodule_clone_url(const char *rel_url)
{
 char *remoteurl, *relurl;
 char *remote = get_default_remote();
 struct strbuf remotesb = STRBUF_INIT;

 strbuf_addf(&remotesb, "remote.%s.url", remote);
 if (git_config_get_string(remotesb.buf, &remoteurl)) {
  warning(_("could not look up configuration '%s'. Assuming this repository is its own authoritative upstream."), remotesb.buf);
  remoteurl = xgetcwd();
 }
 relurl = relative_url(remoteurl, rel_url, ((void*)0));

 free(remote);
 free(remoteurl);
 strbuf_release(&remotesb);

 return relurl;
}
