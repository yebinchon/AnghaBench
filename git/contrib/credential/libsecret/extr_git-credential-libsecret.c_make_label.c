
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {char* path; int host; int protocol; scalar_t__ port; } ;


 char* g_strdup_printf (char*,int ,int ,char*,...) ;

__attribute__((used)) static char *make_label(struct credential *c)
{
 if (c->port)
  return g_strdup_printf("Git: %s://%s:%hu/%s",
     c->protocol, c->host, c->port, c->path ? c->path : "");
 else
  return g_strdup_printf("Git: %s://%s/%s",
     c->protocol, c->host, c->path ? c->path : "");
}
