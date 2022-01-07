
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int euid ;
 int geteuid () ;
 int getuid () ;
 int uid ;

void
ID0init()
{
  uid = getuid();
  euid = geteuid();
}
