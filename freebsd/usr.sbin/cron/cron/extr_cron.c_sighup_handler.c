
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_close () ;

__attribute__((used)) static void
sighup_handler(int x)
{
 log_close();
}
