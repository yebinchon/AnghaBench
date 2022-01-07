
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr {int const* sa_len; } ;
struct ng_parse_type {int dummy; } ;


 int const* SADATA_OFFSET ;

__attribute__((used)) static int
ng_parse_generic_sockdata_getLength(const struct ng_parse_type *type,
 const u_char *start, const u_char *buf)
{
 const struct sockaddr *sa;

 sa = (const struct sockaddr *)(buf - SADATA_OFFSET);
 return (sa->sa_len < SADATA_OFFSET) ? 0 : sa->sa_len - SADATA_OFFSET;
}
