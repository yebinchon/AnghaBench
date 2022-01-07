
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateToolhelp32Snapshot (int ,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 struct json_writer JSON_WRITER_INIT ;
 int TH32CS_SNAPPROCESS ;
 int get_processes (struct json_writer*,scalar_t__) ;
 int jw_array_begin (struct json_writer*,int ) ;
 int jw_end (struct json_writer*) ;
 int jw_release (struct json_writer*) ;
 int the_repository ;
 int trace2_data_json (char*,int ,char*,struct json_writer*) ;

__attribute__((used)) static void get_ancestry(void)
{
 HANDLE hSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

 if (hSnapshot != INVALID_HANDLE_VALUE) {
  struct json_writer jw = JSON_WRITER_INIT;

  jw_array_begin(&jw, 0);
  get_processes(&jw, hSnapshot);
  jw_end(&jw);

  trace2_data_json("process", the_repository, "windows/ancestry",
     &jw);

  jw_release(&jw);
  CloseHandle(hSnapshot);
 }
}
