
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int dynamic_kenv ;
 char* kern_envp ;
 char* kern_getenv (char*) ;
 size_t md_env_len ;
 scalar_t__ md_env_pos ;
 char* md_envp ;
 char* static_env ;
 char* static_hints ;
 scalar_t__ strcmp (char*,char*) ;

void
init_static_kenv(char *buf, size_t len)
{
 char *eval;

 KASSERT(!dynamic_kenv, ("kenv: dynamic_kenv already initialized"));






 KASSERT(len == 0 || len >= 2,
     ("kenv: static env must be initialized or suitably sized"));
 KASSERT(len == 0 || (*buf == '\0' && *(buf + 1) == '\0'),
     ("kenv: sized buffer must be initially empty"));
 md_envp = ((void*)0);
 md_env_len = 0;
 md_env_pos = 0;
 kern_envp = static_env;
 eval = kern_getenv("loader_env.disabled");
 if (eval == ((void*)0) || strcmp(eval, "1") != 0) {
  md_envp = buf;
  md_env_len = len;
  md_env_pos = 0;

  eval = kern_getenv("static_env.disabled");
  if (eval != ((void*)0) && strcmp(eval, "1") == 0) {
   kern_envp[0] = '\0';
   kern_envp[1] = '\0';
  }
 }
 eval = kern_getenv("static_hints.disabled");
 if (eval != ((void*)0) && strcmp(eval, "1") == 0) {
  static_hints[0] = '\0';
  static_hints[1] = '\0';
 }
}
