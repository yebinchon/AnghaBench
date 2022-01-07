
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct credential {int username; int password; int port; int protocol; scalar_t__ host; scalar_t__ path; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int user; int password; } ;
typedef scalar_t__ GnomeKeyringResult ;
typedef TYPE_1__ GnomeKeyringNetworkPasswordData ;
typedef TYPE_2__ GList ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ GNOME_KEYRING_RESULT_CANCELLED ;
 scalar_t__ GNOME_KEYRING_RESULT_NO_MATCH ;
 scalar_t__ GNOME_KEYRING_RESULT_OK ;
 int g_critical (char*,int ) ;
 int g_free (char*) ;
 int g_strdup (int ) ;
 scalar_t__ gnome_keyring_find_network_password_sync (int ,int *,scalar_t__,char*,int ,int *,int ,TYPE_2__**) ;
 int gnome_keyring_memory_free (int ) ;
 int gnome_keyring_memory_strdup (int ) ;
 int gnome_keyring_network_password_list_free (TYPE_2__*) ;
 int gnome_keyring_result_to_message (scalar_t__) ;
 char* keyring_object (struct credential*) ;

__attribute__((used)) static int keyring_get(struct credential *c)
{
 char *object = ((void*)0);
 GList *entries;
 GnomeKeyringNetworkPasswordData *password_data;
 GnomeKeyringResult result;

 if (!c->protocol || !(c->host || c->path))
  return EXIT_FAILURE;

 object = keyring_object(c);

 result = gnome_keyring_find_network_password_sync(
    c->username,
    ((void*)0) ,
    c->host,
    object,
    c->protocol,
    ((void*)0) ,
    c->port,
    &entries);

 g_free(object);

 if (result == GNOME_KEYRING_RESULT_NO_MATCH)
  return EXIT_SUCCESS;

 if (result == GNOME_KEYRING_RESULT_CANCELLED)
  return EXIT_SUCCESS;

 if (result != GNOME_KEYRING_RESULT_OK) {
  g_critical("%s", gnome_keyring_result_to_message(result));
  return EXIT_FAILURE;
 }


 password_data = (GnomeKeyringNetworkPasswordData *)entries->data;

 gnome_keyring_memory_free(c->password);
 c->password = gnome_keyring_memory_strdup(password_data->password);

 if (!c->username)
  c->username = g_strdup(password_data->user);

 gnome_keyring_network_password_list_free(entries);

 return EXIT_SUCCESS;
}
