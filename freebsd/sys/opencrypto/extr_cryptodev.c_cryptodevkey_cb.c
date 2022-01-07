
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptkop {int dummy; } ;


 int wakeup_one (struct cryptkop*) ;

__attribute__((used)) static int
cryptodevkey_cb(void *op)
{
 struct cryptkop *krp = (struct cryptkop *) op;

 wakeup_one(krp);
 return (0);
}
