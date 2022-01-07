
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session_conf {char* isc_target; char* isc_target_addr; } ;


 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool
iscsi_session_conf_matches(unsigned int id1, const struct iscsi_session_conf *c1,
    unsigned int id2, const struct iscsi_session_conf *c2)
{

 if (id2 != 0 && id2 != id1)
  return (0);
 if (c2->isc_target[0] != '\0' &&
     strcmp(c1->isc_target, c2->isc_target) != 0)
  return (0);
 if (c2->isc_target_addr[0] != '\0' &&
     strcmp(c1->isc_target_addr, c2->isc_target_addr) != 0)
  return (0);
 return (1);
}
