
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int CPU_EMPTY (int *) ;
 int CPU_FFS (int *) ;
 int CPU_ISSET (int,int *) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int GDB_SIGNAL_TRAP ;
 int append_byte (int ) ;
 int append_char (char) ;
 int cur_vcpu ;
 int finish_packet () ;
 int gdb_query (char const*,size_t) ;
 int gdb_read_mem (char const*,size_t) ;
 int gdb_read_regs () ;
 int gdb_resume_vcpus () ;
 int gdb_step_vcpu (int) ;
 int gdb_write_mem (char const*,size_t) ;
 int parse_threadid (char const*,size_t) ;
 int send_empty_response () ;
 int send_error (int ) ;
 int send_ok () ;
 int start_packet () ;
 int vcpus_active ;

__attribute__((used)) static void
handle_command(const uint8_t *data, size_t len)
{


 if (len >= 3 && data[0] >= '0' && data[0] <= '9' &&
     data[0] >= '0' && data[0] <= '9' && data[2] == ':') {
  send_empty_response();
  return;
 }

 switch (*data) {
 case 'c':
  if (len != 1) {
   send_error(EINVAL);
   break;
  }


  gdb_resume_vcpus();
  break;
 case 'D':
  send_ok();


  break;
 case 'g': {
  gdb_read_regs();
  break;
 }
 case 'H': {
  int tid;

  if (data[1] != 'g' && data[1] != 'c') {
   send_error(EINVAL);
   break;
  }
  tid = parse_threadid(data + 2, len - 2);
  if (tid == -2) {
   send_error(EINVAL);
   break;
  }

  if (CPU_EMPTY(&vcpus_active)) {
   send_error(EINVAL);
   break;
  }
  if (tid == -1 || tid == 0)
   cur_vcpu = CPU_FFS(&vcpus_active) - 1;
  else if (CPU_ISSET(tid - 1, &vcpus_active))
   cur_vcpu = tid - 1;
  else {
   send_error(EINVAL);
   break;
  }
  send_ok();
  break;
 }
 case 'm':
  gdb_read_mem(data, len);
  break;
 case 'M':
  gdb_write_mem(data, len);
  break;
 case 'T': {
  int tid;

  tid = parse_threadid(data + 1, len - 1);
  if (tid <= 0 || !CPU_ISSET(tid - 1, &vcpus_active)) {
   send_error(EINVAL);
   return;
  }
  send_ok();
  break;
 }
 case 'q':
  gdb_query(data, len);
  break;
 case 's':
  if (len != 1) {
   send_error(EINVAL);
   break;
  }


  if (!gdb_step_vcpu(cur_vcpu)) {
   send_error(EOPNOTSUPP);
   break;
  }
  break;
 case '?':


  start_packet();
  append_char('S');
  append_byte(GDB_SIGNAL_TRAP);
  finish_packet();
  break;
 case 'G':
 case 'v':


 case 'p':
 case 'P':
 case 'Q':
 case 't':
 case 'X':
 case 'z':
 case 'Z':
 default:
  send_empty_response();
 }
}
