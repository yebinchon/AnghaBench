
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int path; int host; scalar_t__ port; } ;


 char* g_strdup_printf (char*,int ,int ,...) ;

__attribute__((used)) static char *keyring_object(struct credential *c)
{
 if (!c->path)
  return ((void*)0);

 if (c->port)
  return g_strdup_printf("%s:%hd/%s", c->host, c->port, c->path);

 return g_strdup_printf("%s/%s", c->host, c->path);
}
