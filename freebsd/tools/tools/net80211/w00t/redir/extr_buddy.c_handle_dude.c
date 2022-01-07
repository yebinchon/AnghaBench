
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int err (int,char*) ;
 int handle_data (int,char*,int) ;
 int recv (int,char*,int,int ) ;

void handle_dude(int dude, int raw)
{
 char buf[4096];
 int rd;

 while (1) {
  rd = recv(raw, buf, sizeof(buf), 0);
  if (rd == -1)
   err(1, "recv()");

  if (handle_data(dude, buf, rd) == -1)
   return;
 }
}
