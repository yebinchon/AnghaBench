
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in {int sin_addr; } ;
typedef int bool_t ;
struct TYPE_2__ {int dom_domain; } ;


 int FALSE ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 scalar_t__ MAX_RETRIES ;
 int TRUE ;
 TYPE_1__* broad_domain ;
 int bzero (struct sockaddr_in*,int) ;
 int inet_ntoa (int ) ;
 scalar_t__ retries ;
 int syslog (int ,char*,...) ;
 scalar_t__ tell_parent (int ,struct sockaddr_in*) ;
 scalar_t__ verify (int ) ;
 scalar_t__ yp_restricted ;

__attribute__((used)) static bool_t
broadcast_result(bool_t *out, struct sockaddr_in *addr)
{
 if (retries >= MAX_RETRIES) {
  bzero(addr, sizeof(struct sockaddr_in));
  if (tell_parent(broad_domain->dom_domain, addr))
   syslog(LOG_WARNING, "lost connection to parent");
  return (TRUE);
 }

 if (yp_restricted && verify(addr->sin_addr)) {
  retries++;
  syslog(LOG_NOTICE, "NIS server at %s not in restricted mode access list -- rejecting.\n",inet_ntoa(addr->sin_addr));
  return (FALSE);
 } else {
  if (tell_parent(broad_domain->dom_domain, addr))
   syslog(LOG_WARNING, "lost connection to parent");
  return (TRUE);
 }
}
