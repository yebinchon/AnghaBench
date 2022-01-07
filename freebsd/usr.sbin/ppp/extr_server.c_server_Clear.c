
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bundle {int dummy; } ;
struct TYPE_3__ {char* sockname; scalar_t__ mask; scalar_t__ port; } ;
struct TYPE_4__ {int fd; TYPE_1__ cfg; } ;


 TYPE_2__ server ;
 int server_Close (struct bundle*) ;

int
server_Clear(struct bundle *bundle)
{
  int ret;

  ret = server_Close(bundle);

  server.fd = -1;
  server.cfg.port = 0;
  *server.cfg.sockname = '\0';
  server.cfg.mask = 0;

  return ret;
}
