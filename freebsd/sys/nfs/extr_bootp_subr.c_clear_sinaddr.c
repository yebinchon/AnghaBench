
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;


 int AF_INET ;
 int INADDR_ANY ;
 int bzero (struct sockaddr_in*,int) ;

__attribute__((used)) static void
clear_sinaddr(struct sockaddr_in *sin)
{

 bzero(sin, sizeof(*sin));
 sin->sin_len = sizeof(*sin);
 sin->sin_family = AF_INET;
 sin->sin_addr.s_addr = INADDR_ANY;
 sin->sin_port = 0;
}
