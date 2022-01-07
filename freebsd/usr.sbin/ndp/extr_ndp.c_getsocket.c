
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_ROUTE ;
 int SOCK_RAW ;
 int err (int,char*) ;
 scalar_t__ s ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static void
getsocket()
{
 if (s < 0) {
  s = socket(PF_ROUTE, SOCK_RAW, 0);
  if (s < 0) {
   err(1, "socket");

  }
 }
}
