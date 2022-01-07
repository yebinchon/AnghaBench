
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int append_string (char*) ;
 int finish_packet () ;
 int start_packet () ;

__attribute__((used)) static void
send_ok(void)
{

 start_packet();
 append_string("OK");
 finish_packet();
}
