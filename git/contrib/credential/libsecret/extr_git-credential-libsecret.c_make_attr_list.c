
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {scalar_t__ path; scalar_t__ port; scalar_t__ host; scalar_t__ protocol; scalar_t__ username; } ;
typedef int GHashTable ;


 int g_free ;
 int g_hash_table_insert (int *,char*,int ) ;
 int * g_hash_table_new_full (int ,int ,int *,int ) ;
 int g_str_equal ;
 int g_str_hash ;
 int g_strdup (scalar_t__) ;
 int g_strdup_printf (char*,scalar_t__) ;

__attribute__((used)) static GHashTable *make_attr_list(struct credential *c)
{
 GHashTable *al = g_hash_table_new_full(g_str_hash, g_str_equal, ((void*)0), g_free);

 if (c->username)
  g_hash_table_insert(al, "user", g_strdup(c->username));
 if (c->protocol)
  g_hash_table_insert(al, "protocol", g_strdup(c->protocol));
 if (c->host)
  g_hash_table_insert(al, "server", g_strdup(c->host));
 if (c->port)
  g_hash_table_insert(al, "port", g_strdup_printf("%hu", c->port));
 if (c->path)
  g_hash_table_insert(al, "object", g_strdup(c->path));

 return al;
}
