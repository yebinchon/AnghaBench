
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmtcallfd_list {int fd; int netid; struct rmtcallfd_list* next; } ;


 struct rmtcallfd_list* rmthead ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
find_rmtcallfd_by_netid(char *netid)
{
 struct rmtcallfd_list *rmt;

 for (rmt = rmthead; rmt != ((void*)0); rmt = rmt->next) {
  if (strcmp(netid, rmt->netid) == 0) {
   return (rmt->fd);
  }
 }
 return (-1);
}
