
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int password; int port; int protocol; scalar_t__ host; int username; scalar_t__ path; } ;
typedef int guint32 ;
typedef scalar_t__ GnomeKeyringResult ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GNOME_KEYRING_DEFAULT ;
 scalar_t__ GNOME_KEYRING_RESULT_CANCELLED ;
 scalar_t__ GNOME_KEYRING_RESULT_OK ;
 int g_critical (char*,int ) ;
 int g_free (char*) ;
 int gnome_keyring_result_to_message (scalar_t__) ;
 scalar_t__ gnome_keyring_set_network_password_sync (int ,int ,int *,scalar_t__,char*,int ,int *,int ,int ,int *) ;
 char* keyring_object (struct credential*) ;

__attribute__((used)) static int keyring_store(struct credential *c)
{
 guint32 item_id;
 char *object = ((void*)0);
 GnomeKeyringResult result;
 if (!c->protocol || !(c->host || c->path) ||
     !c->username || !c->password)
  return EXIT_FAILURE;

 object = keyring_object(c);

 result = gnome_keyring_set_network_password_sync(
    GNOME_KEYRING_DEFAULT,
    c->username,
    ((void*)0) ,
    c->host,
    object,
    c->protocol,
    ((void*)0) ,
    c->port,
    c->password,
    &item_id);

 g_free(object);

 if (result != GNOME_KEYRING_RESULT_OK &&
     result != GNOME_KEYRING_RESULT_CANCELLED) {
  g_critical("%s", gnome_keyring_result_to_message(result));
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}
