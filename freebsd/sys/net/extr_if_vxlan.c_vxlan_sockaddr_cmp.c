
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_len; } ;
union vxlan_sockaddr {TYPE_1__ sa; } ;
struct sockaddr {int dummy; } ;


 int bcmp (TYPE_1__*,struct sockaddr const*,int ) ;

__attribute__((used)) static int
vxlan_sockaddr_cmp(const union vxlan_sockaddr *vxladdr,
    const struct sockaddr *sa)
{

 return (bcmp(&vxladdr->sa, sa, vxladdr->sa.sa_len));
}
