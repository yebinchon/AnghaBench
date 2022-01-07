
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int append_byte (int) ;
 int append_char (char) ;
 int finish_packet () ;
 int start_packet () ;

__attribute__((used)) static void
send_error(int error)
{

 start_packet();
 append_char('E');
 append_byte(error);
 finish_packet();
}
