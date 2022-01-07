
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol { ____Placeholder_protocol } protocol ;


 int PROTO_FILE ;
 int PROTO_GIT ;
 int PROTO_LOCAL ;
 int PROTO_SSH ;
 int _ (char*) ;
 int die (int ) ;
 int free (char*) ;
 int get_protocol (char*) ;
 scalar_t__ has_dos_drive_prefix (char*) ;
 char* host_end (char**,int ) ;
 scalar_t__ is_url (char const*) ;
 int offset_1st_component (char*) ;
 char* strchr (char*,int) ;
 char* strstr (char*,char*) ;
 char* url_decode (char const*) ;
 int url_is_local_not_ssh (char*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static enum protocol parse_connect_url(const char *url_orig, char **ret_host,
           char **ret_path)
{
 char *url;
 char *host, *path;
 char *end;
 int separator = '/';
 enum protocol protocol = PROTO_LOCAL;

 if (is_url(url_orig))
  url = url_decode(url_orig);
 else
  url = xstrdup(url_orig);

 host = strstr(url, "://");
 if (host) {
  *host = '\0';
  protocol = get_protocol(url);
  host += 3;
 } else {
  host = url;
  if (!url_is_local_not_ssh(url)) {
   protocol = PROTO_SSH;
   separator = ':';
  }
 }





 end = host_end(&host, 0);

 if (protocol == PROTO_LOCAL)
  path = end;
 else if (protocol == PROTO_FILE && *host != '/' &&
   !has_dos_drive_prefix(host) &&
   offset_1st_component(host - 2) > 1)
  path = host - 2;
 else if (protocol == PROTO_FILE && has_dos_drive_prefix(end))
  path = end;
 else
  path = strchr(end, separator);

 if (!path || !*path)
  die(_("no path specified; see 'git help pull' for valid url syntax"));






 end = path;
 if (separator == ':')
  path++;
 if (protocol == PROTO_GIT || protocol == PROTO_SSH) {
  if (path[1] == '~')
   path++;
 }

 path = xstrdup(path);
 *end = '\0';

 *ret_host = xstrdup(host);
 *ret_path = path;
 free(url);
 return protocol;
}
