
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int pam_err ;
 int pam_strerror (int ,int ) ;
 int pamh ;
 int syslog (int ,char*,char const*,int ) ;

__attribute__((used)) static void
pam_syslog(const char *msg)
{
 syslog(LOG_ERR, "%s: %s", msg, pam_strerror(pamh, pam_err));
}
