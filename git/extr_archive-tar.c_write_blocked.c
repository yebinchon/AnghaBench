
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_write_blocked (void const*,unsigned long) ;
 int finish_record () ;

__attribute__((used)) static void write_blocked(const void *data, unsigned long size)
{
 do_write_blocked(data, size);
 finish_record();
}
