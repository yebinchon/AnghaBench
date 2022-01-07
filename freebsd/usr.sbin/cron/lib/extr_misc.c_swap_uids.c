
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int geteuid () ;
 int getuid () ;
 int setreuid (int ,int ) ;

int swap_uids() { return setreuid(geteuid(), getuid()); }
