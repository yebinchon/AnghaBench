
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LogLOG ;
 int LogMAX ;
 int LogMIN ;
 char const** LogNames ;

const char *
log_Name(int id)
{
  if (id == LogLOG)
    return "LOG";
  return id < LogMIN || id > LogMAX ? "Unknown" : LogNames[id - 1];
}
