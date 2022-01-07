
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ at_type; } ;
struct auditinfo_addr {TYPE_1__ ai_termid; } ;


 scalar_t__ AU_IPv4 ;
 scalar_t__ AU_IPv6 ;
 int KASSERT (int,char*) ;
 int KINFO_WLOCK () ;
 int KINFO_WUNLOCK () ;
 struct auditinfo_addr audit_kinfo ;

void
audit_set_kinfo(struct auditinfo_addr *ak)
{

 KASSERT(ak->ai_termid.at_type == AU_IPv4 ||
     ak->ai_termid.at_type == AU_IPv6,
     ("audit_set_kinfo: invalid address type"));

 KINFO_WLOCK();
 audit_kinfo = *ak;
 KINFO_WUNLOCK();
}
