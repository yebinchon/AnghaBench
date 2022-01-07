
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct child_process {int dummy; } ;
typedef enum protocol_version { ____Placeholder_protocol_version } protocol_version ;


 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 char* getenv (char*) ;
 struct child_process* git_proxy_connect (int*,char*) ;
 struct child_process* git_tcp_connect (int*,char*,int) ;
 scalar_t__ git_use_proxy (char*) ;
 int packet_write (int,int ,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,...) ;
 int strbuf_release (struct strbuf*) ;
 int transport_check_allowed (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static struct child_process *git_connect_git(int fd[2], char *hostandport,
          const char *path, const char *prog,
          enum protocol_version version,
          int flags)
{
 struct child_process *conn;
 struct strbuf request = STRBUF_INIT;





 char *target_host = getenv("GIT_OVERRIDE_VIRTUAL_HOST");
 if (target_host)
  target_host = xstrdup(target_host);
 else
  target_host = xstrdup(hostandport);

 transport_check_allowed("git");





 if (git_use_proxy(hostandport))
  conn = git_proxy_connect(fd, hostandport);
 else
  conn = git_tcp_connect(fd, hostandport, flags);







 strbuf_addf(&request,
      "%s %s%chost=%s%c",
      prog, path, 0,
      target_host, 0);


 if (version > 0) {
  strbuf_addch(&request, '\0');
  strbuf_addf(&request, "version=%d%c",
       version, '\0');
 }

 packet_write(fd[1], request.buf, request.len);

 free(target_host);
 strbuf_release(&request);
 return conn;
}
