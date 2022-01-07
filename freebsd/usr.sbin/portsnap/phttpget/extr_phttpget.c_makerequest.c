
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char*,char*,char*,char*,int ,char*,char*) ;
 scalar_t__ env_HTTP_PROXY ;
 int env_HTTP_USER_AGENT ;
 int err (int,char*) ;
 char* proxyauth ;

__attribute__((used)) static int
makerequest(char ** buf, char * path, char * server, int connclose)
{
 int buflen;

 buflen = asprintf(buf,
     "GET %s%s/%s HTTP/1.1\r\n"
     "Host: %s\r\n"
     "User-Agent: %s\r\n"
     "%s"
     "%s"
     "\r\n",
     env_HTTP_PROXY ? "http://" : "",
     env_HTTP_PROXY ? server : "",
     path, server, env_HTTP_USER_AGENT,
     proxyauth ? proxyauth : "",
     connclose ? "Connection: Close\r\n" : "Connection: Keep-Alive\r\n");
 if (buflen == -1)
  err(1, "asprintf");
 return(buflen);
}
