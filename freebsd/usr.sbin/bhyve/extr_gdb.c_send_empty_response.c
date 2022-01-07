
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int finish_packet () ;
 int start_packet () ;

__attribute__((used)) static void
send_empty_response(void)
{

 start_packet();
 finish_packet();
}
