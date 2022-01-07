
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
typedef int led_t ;


 struct cdev* led_create_state (int *,void*,char const*,int ) ;

struct cdev *
led_create(led_t *func, void *priv, char const *name)
{

 return (led_create_state(func, priv, name, 0));
}
