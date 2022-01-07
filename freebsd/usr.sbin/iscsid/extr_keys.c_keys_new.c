
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys {int dummy; } ;


 struct keys* calloc (int,int) ;
 int log_err (int,char*) ;

struct keys *
keys_new(void)
{
 struct keys *keys;

 keys = calloc(1, sizeof(*keys));
 if (keys == ((void*)0))
  log_err(1, "calloc");

 return (keys);
}
