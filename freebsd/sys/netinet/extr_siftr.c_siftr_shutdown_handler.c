
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIFTR_DISABLE ;
 int siftr_enabled ;
 int siftr_manage_ops (int ) ;

__attribute__((used)) static void
siftr_shutdown_handler(void *arg)
{
 if (siftr_enabled == 1) {
  siftr_manage_ops(SIFTR_DISABLE);
 }
}
