
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int sa_len; } ;


 int memcpy (struct sockaddr_storage*,struct sockaddr*,int ) ;
 scalar_t__ sctp_recover_scope (struct sockaddr_in6*,struct sockaddr_in6*) ;

__attribute__((used)) static uint32_t
sctp_fill_user_address(struct sockaddr_storage *ss, struct sockaddr *sa)
{






 memcpy(ss, sa, sa->sa_len);
 return (0);
}
