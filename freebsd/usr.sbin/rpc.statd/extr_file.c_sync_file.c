
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int errno ;
 scalar_t__ msync (void*,int ,int ) ;
 scalar_t__ status_info ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

void sync_file(void)
{
  if (msync((void *)status_info, 0, 0) < 0)
  {
    syslog(LOG_ERR, "msync() failed: %s", strerror(errno));
  }
}
