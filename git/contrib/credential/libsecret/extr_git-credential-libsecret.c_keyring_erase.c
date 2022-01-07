
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct credential {int username; int path; int host; int protocol; } ;
struct TYPE_4__ {int message; } ;
typedef int GHashTable ;
typedef TYPE_1__ GError ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SECRET_SCHEMA_COMPAT_NETWORK ;
 int g_critical (char*,int ) ;
 int g_error_free (TYPE_1__*) ;
 int g_hash_table_unref (int *) ;
 int * make_attr_list (struct credential*) ;
 int secret_password_clearv_sync (int ,int *,int *,TYPE_1__**) ;

__attribute__((used)) static int keyring_erase(struct credential *c)
{
 GHashTable *attributes = ((void*)0);
 GError *error = ((void*)0);
 if (!c->protocol && !c->host && !c->path && !c->username)
  return EXIT_FAILURE;

 attributes = make_attr_list(c);
 secret_password_clearv_sync(SECRET_SCHEMA_COMPAT_NETWORK,
        attributes,
        ((void*)0),
        &error);
 g_hash_table_unref(attributes);

 if (error != ((void*)0)) {
  g_critical("erase failed: %s", error->message);
  g_error_free(error);
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}
