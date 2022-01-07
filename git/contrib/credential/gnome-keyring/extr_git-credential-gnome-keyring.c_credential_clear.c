
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int password; int username; int path; int host; int protocol; } ;


 int credential_init (struct credential*) ;
 int g_free (int ) ;
 int gnome_keyring_memory_free (int ) ;

__attribute__((used)) static void credential_clear(struct credential *c)
{
 g_free(c->protocol);
 g_free(c->host);
 g_free(c->path);
 g_free(c->username);
 gnome_keyring_memory_free(c->password);

 credential_init(c);
}
