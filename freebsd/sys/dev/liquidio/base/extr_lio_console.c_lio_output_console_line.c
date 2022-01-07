
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_console {char* leftover; int (* print ) (struct octeon_device*,int ,char*,char*) ;} ;
typedef size_t int32_t ;


 size_t strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int stub1 (struct octeon_device*,int ,char*,char*) ;
 int stub2 (struct octeon_device*,int ,char*,char*) ;

__attribute__((used)) static void
lio_output_console_line(struct octeon_device *oct, struct lio_console *console,
   size_t console_num, char *console_buffer,
   int32_t bytes_read)
{
 size_t len;
 int32_t i;
 char *line;

 line = console_buffer;
 for (i = 0; i < bytes_read; i++) {

  if (console_buffer[i] == '\n') {
   console_buffer[i] = '\0';







   if (console->leftover[0] &&
       (line != console->leftover)) {
    if (console->print)
     (*console->print)(oct,
         (uint32_t)console_num,
       console->leftover,line);
    console->leftover[0] = '\0';
   } else {
    if (console->print)
     (*console->print)(oct,
         (uint32_t)console_num,
         line, ((void*)0));
   }

   line = &console_buffer[i + 1];
  }
 }


 if (line != &console_buffer[bytes_read]) {
  console_buffer[bytes_read] = '\0';
  len = strlen(console->leftover);
  strncpy(&console->leftover[len], line,
   sizeof(console->leftover) - len);
 }
}
