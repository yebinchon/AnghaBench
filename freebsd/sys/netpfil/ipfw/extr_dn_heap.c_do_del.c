
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNHT_SCAN_DEL ;

__attribute__((used)) static int
do_del(void *obj, void *arg)
{
 (void)obj;
 (void)arg;
 return DNHT_SCAN_DEL;
}
