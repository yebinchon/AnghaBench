
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_SIGNAL_TRAP ;
 int append_byte (int ) ;
 int append_char (char) ;
 int append_integer (int) ;
 int append_string (char*) ;
 int finish_packet () ;
 int start_packet () ;
 int stopped_vcpu ;

__attribute__((used)) static void
report_stop(void)
{

 start_packet();
 if (stopped_vcpu == -1)
  append_char('S');
 else
  append_char('T');
 append_byte(GDB_SIGNAL_TRAP);
 if (stopped_vcpu != -1) {
  append_string("thread:");
  append_integer(stopped_vcpu + 1);
  append_char(';');
 }
 stopped_vcpu = -1;
 finish_packet();
}
