
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iflib_started ;

__attribute__((used)) static void
iflib_record_started(void *arg)
{
 iflib_started = 1;
}
