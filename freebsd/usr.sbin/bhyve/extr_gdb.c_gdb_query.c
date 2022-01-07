
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int cpuset_t ;
typedef int buf ;


 int CPU_CLR (int,int *) ;
 scalar_t__ CPU_EMPTY (int *) ;
 int CPU_FFS (int *) ;
 int CPU_ISSET (int,int *) ;
 int EINVAL ;
 int append_asciihex (char*) ;
 int append_char (char) ;
 int append_integer (int) ;
 int append_string (char*) ;
 int check_features (char const*,size_t) ;
 scalar_t__ command_equals (char const*,size_t,char*) ;
 int cur_vcpu ;
 int finish_packet () ;
 int parse_threadid (char const*,size_t) ;
 int send_empty_response () ;
 int send_error (int ) ;
 int snprintf (char*,int,char*,int) ;
 int start_packet () ;
 scalar_t__ strlen (char*) ;
 int vcpus_active ;

__attribute__((used)) static void
gdb_query(const uint8_t *data, size_t len)
{





 if (command_equals(data, len, "qAttached")) {
  start_packet();
  append_char('1');
  finish_packet();
 } else if (command_equals(data, len, "qC")) {
  start_packet();
  append_string("QC");
  append_integer(cur_vcpu + 1);
  finish_packet();
 } else if (command_equals(data, len, "qfThreadInfo")) {
  cpuset_t mask;
  bool first;
  int vcpu;

  if (CPU_EMPTY(&vcpus_active)) {
   send_error(EINVAL);
   return;
  }
  mask = vcpus_active;
  start_packet();
  append_char('m');
  first = 1;
  while (!CPU_EMPTY(&mask)) {
   vcpu = CPU_FFS(&mask) - 1;
   CPU_CLR(vcpu, &mask);
   if (first)
    first = 0;
   else
    append_char(',');
   append_integer(vcpu + 1);
  }
  finish_packet();
 } else if (command_equals(data, len, "qsThreadInfo")) {
  start_packet();
  append_char('l');
  finish_packet();
 } else if (command_equals(data, len, "qSupported")) {
  data += strlen("qSupported");
  len -= strlen("qSupported");
  check_features(data, len);
 } else if (command_equals(data, len, "qThreadExtraInfo")) {
  char buf[16];
  int tid;

  data += strlen("qThreadExtraInfo");
  len -= strlen("qThreadExtraInfo");
  if (*data != ',') {
   send_error(EINVAL);
   return;
  }
  tid = parse_threadid(data + 1, len - 1);
  if (tid <= 0 || !CPU_ISSET(tid - 1, &vcpus_active)) {
   send_error(EINVAL);
   return;
  }

  snprintf(buf, sizeof(buf), "vCPU %d", tid - 1);
  start_packet();
  append_asciihex(buf);
  finish_packet();
 } else
  send_empty_response();
}
