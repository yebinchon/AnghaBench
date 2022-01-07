
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pw_fields; int pw_shell; int pw_dir; int pw_gecos; void* pw_expire; void* pw_change; int pw_class; void* pw_gid; void* pw_uid; int pw_passwd; int pw_name; } ;


 int EXPAND (int ) ;
 int _PWF_CHANGE ;
 int _PWF_CLASS ;
 int _PWF_DIR ;
 int _PWF_EXPIRE ;
 int _PWF_GECOS ;
 int _PWF_GID ;
 int _PWF_NAME ;
 int _PWF_PASSWD ;
 int _PWF_SHELL ;
 int _PWF_UID ;
 void* atoi (char*) ;
 void* atol (char*) ;
 int bzero (char*,int) ;
 char* realloc (char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 TYPE_1__ yp_password ;

__attribute__((used)) static void
copy_yp_pass(char *p, int x, int m)
{
 char *t, *s = p;
 static char *buf;

 yp_password.pw_fields = 0;

 buf = realloc(buf, m + 10);
 bzero(buf, m + 10);


 while (strchr(s, ':')) {
  s = (strchr(s, ':') + 1);
  *(s - 1)= '\0';
 }

 t = buf;




        do { yp_password.pw_name = t; while ((*t++ = *p++)); } while (0);
 yp_password.pw_fields |= _PWF_NAME;
        do { yp_password.pw_passwd = t; while ((*t++ = *p++)); } while (0);
 yp_password.pw_fields |= _PWF_PASSWD;
 yp_password.pw_uid = atoi(p);
        p += (strlen(p) + 1);
 yp_password.pw_fields |= _PWF_UID;
 yp_password.pw_gid = atoi(p);
        p += (strlen(p) + 1);
 yp_password.pw_fields |= _PWF_GID;
 if (x) {
  do { yp_password.pw_class = t; while ((*t++ = *p++)); } while (0);
  yp_password.pw_fields |= _PWF_CLASS;
  yp_password.pw_change = atol(p);
  p += (strlen(p) + 1);
  yp_password.pw_fields |= _PWF_CHANGE;
  yp_password.pw_expire = atol(p);
  p += (strlen(p) + 1);
  yp_password.pw_fields |= _PWF_EXPIRE;
 }
        do { yp_password.pw_gecos = t; while ((*t++ = *p++)); } while (0);
 yp_password.pw_fields |= _PWF_GECOS;
        do { yp_password.pw_dir = t; while ((*t++ = *p++)); } while (0);
 yp_password.pw_fields |= _PWF_DIR;
        do { yp_password.pw_shell = t; while ((*t++ = *p++)); } while (0);
 yp_password.pw_fields |= _PWF_SHELL;

 return;
}
