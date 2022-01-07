
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addrlen; int ai_addr; struct addrinfo* ai_next; } ;
typedef int off_t ;
struct TYPE_6__ {int noOfHosts; TYPE_1__* hosts; } ;
struct TYPE_5__ {char* hostname; int notifyReqd; int monList; } ;
typedef TYPE_1__ HostInfo ;


 int LOG_ERR ;
 int SEEK_SET ;
 int SM_MAXSTRLEN ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,int *,struct addrinfo**) ;
 int lseek (int ,int,int ) ;
 int memcmp (int ,int ,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 int status_fd ;
 int status_file_len ;
 TYPE_2__* status_info ;
 int strncasecmp (char*,char*,int ) ;
 int strncpy (char*,char*,int ) ;
 int syslog (int ,char*) ;
 scalar_t__ write (int ,char*,int) ;

HostInfo *find_host(char *hostname, int create)
{
  HostInfo *hp;
  HostInfo *spare_slot = ((void*)0);
  HostInfo *result = ((void*)0);
  struct addrinfo *ai1, *ai2;
  int i;

  ai2 = ((void*)0);
  if (getaddrinfo(hostname, ((void*)0), ((void*)0), &ai1) != 0)
    ai1 = ((void*)0);
  for (i = 0, hp = status_info->hosts; i < status_info->noOfHosts; i++, hp++)
  {
    if (!strncasecmp(hostname, hp->hostname, SM_MAXSTRLEN))
    {
      result = hp;
      break;
    }
    if (hp->hostname[0] != '\0' &&
 getaddrinfo(hp->hostname, ((void*)0), ((void*)0), &ai2) != 0)
      ai2 = ((void*)0);
    if (ai1 && ai2)
    {
       struct addrinfo *p1, *p2;
       for (p1 = ai1; !result && p1; p1 = p1->ai_next)
       {
  for (p2 = ai2; !result && p2; p2 = p2->ai_next)
  {
    if (p1->ai_family == p2->ai_family
        && p1->ai_addrlen == p2->ai_addrlen
        && !memcmp(p1->ai_addr, p2->ai_addr, p1->ai_addrlen))
    {
      result = hp;
      break;
    }
  }
       }
       if (result)
  break;
    }
    if (ai2) {
      freeaddrinfo(ai2);
      ai2 = ((void*)0);
    }
    if (!spare_slot && !hp->monList && !hp->notifyReqd)
      spare_slot = hp;
  }
  if (ai1)
    freeaddrinfo(ai1);


  if (result || !create) return (result);



  if (!spare_slot)
  {
    off_t desired_size;
    spare_slot = &status_info->hosts[status_info->noOfHosts];
    desired_size = ((char*)spare_slot - (char*)status_info) + sizeof(HostInfo);
    if (desired_size > status_file_len)
    {

      if (lseek(status_fd, desired_size - 1, SEEK_SET) == -1 ||
          write(status_fd, "\0", 1) < 0)
      {
 syslog(LOG_ERR, "Unable to extend status file");
 return (((void*)0));
      }
      status_file_len = desired_size;
    }
    status_info->noOfHosts++;
  }




  memset(spare_slot, 0, sizeof(HostInfo));
  strncpy(spare_slot->hostname, hostname, SM_MAXSTRLEN);
  return (spare_slot);
}
