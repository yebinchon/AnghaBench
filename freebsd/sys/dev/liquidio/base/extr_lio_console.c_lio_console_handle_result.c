
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {struct lio_console* console; } ;
struct lio_console {scalar_t__ waiting; } ;



__attribute__((used)) static void
lio_console_handle_result(struct octeon_device *oct, size_t console_num)
{
 struct lio_console *console;

 console = &oct->console[console_num];

 console->waiting = 0;
}
