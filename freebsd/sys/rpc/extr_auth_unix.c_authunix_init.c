
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTH_UNIX_HASH_SIZE ;
 int TAILQ_INIT (int *) ;
 int auth_unix_all ;
 int * auth_unix_cache ;
 int auth_unix_lock ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
authunix_init(void *dummy)
{
 int i;

 for (i = 0; i < AUTH_UNIX_HASH_SIZE; i++)
  TAILQ_INIT(&auth_unix_cache[i]);
 TAILQ_INIT(&auth_unix_all);
 sx_init(&auth_unix_lock, "auth_unix_lock");
}
