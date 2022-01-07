
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long tv_sec; } ;


 int asprintf (char**,char*,char*,...) ;
 char* b64enc (char*) ;
 int * env_HTTP_PROXY ;
 char* env_HTTP_PROXY_AUTH ;
 char* env_HTTP_TIMEOUT ;
 char* env_HTTP_USER_AGENT ;
 int err (int,char*) ;
 int free (char*) ;
 void* getenv (char*) ;
 int * proxyauth ;
 char* proxyport ;
 char* strchr (int *,char) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 scalar_t__ strncmp (int *,char*,int) ;
 char* strsep (char**,char*) ;
 long strtol (char*,char**,int) ;
 TYPE_1__ timo ;
 int warnx (char*,char*) ;

__attribute__((used)) static void
readenv(void)
{
 char *proxy_auth_userpass, *proxy_auth_userpass64, *p;
 char *proxy_auth_user = ((void*)0);
 char *proxy_auth_pass = ((void*)0);
 long http_timeout;

 env_HTTP_PROXY = getenv("HTTP_PROXY");
 if (env_HTTP_PROXY == ((void*)0))
  env_HTTP_PROXY = getenv("http_proxy");
 if (env_HTTP_PROXY != ((void*)0)) {
  if (strncmp(env_HTTP_PROXY, "http://", 7) == 0)
   env_HTTP_PROXY += 7;
  p = strchr(env_HTTP_PROXY, '/');
  if (p != ((void*)0))
   *p = 0;
  p = strchr(env_HTTP_PROXY, ':');
  if (p != ((void*)0)) {
   *p = 0;
   proxyport = p + 1;
  } else
   proxyport = "3128";
 }

 env_HTTP_PROXY_AUTH = getenv("HTTP_PROXY_AUTH");
 if ((env_HTTP_PROXY != ((void*)0)) &&
     (env_HTTP_PROXY_AUTH != ((void*)0)) &&
     (strncasecmp(env_HTTP_PROXY_AUTH, "basic:" , 6) == 0)) {

  (void) strsep(&env_HTTP_PROXY_AUTH, ":");


  (void) strsep(&env_HTTP_PROXY_AUTH, ":");


  proxy_auth_user = strsep(&env_HTTP_PROXY_AUTH, ":");
  proxy_auth_pass = env_HTTP_PROXY_AUTH;
 }

 if ((proxy_auth_user != ((void*)0)) && (proxy_auth_pass != ((void*)0))) {
  asprintf(&proxy_auth_userpass, "%s:%s",
      proxy_auth_user, proxy_auth_pass);
  if (proxy_auth_userpass == ((void*)0))
   err(1, "asprintf");

  proxy_auth_userpass64 = b64enc(proxy_auth_userpass);
  if (proxy_auth_userpass64 == ((void*)0))
   err(1, "malloc");

  asprintf(&proxyauth, "Proxy-Authorization: Basic %s\r\n",
      proxy_auth_userpass64);
  if (proxyauth == ((void*)0))
   err(1, "asprintf");

  free(proxy_auth_userpass);
  free(proxy_auth_userpass64);
 } else
  proxyauth = ((void*)0);

 env_HTTP_USER_AGENT = getenv("HTTP_USER_AGENT");
 if (env_HTTP_USER_AGENT == ((void*)0))
  env_HTTP_USER_AGENT = "phttpget/0.1";

 env_HTTP_TIMEOUT = getenv("HTTP_TIMEOUT");
 if (env_HTTP_TIMEOUT != ((void*)0)) {
  http_timeout = strtol(env_HTTP_TIMEOUT, &p, 10);
  if ((*env_HTTP_TIMEOUT == '\0') || (*p != '\0') ||
      (http_timeout < 0))
   warnx("HTTP_TIMEOUT (%s) is not a positive integer",
       env_HTTP_TIMEOUT);
  else
   timo.tv_sec = http_timeout;
 }
}
