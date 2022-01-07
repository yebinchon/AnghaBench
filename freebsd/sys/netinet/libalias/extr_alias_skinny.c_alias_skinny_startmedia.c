
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tcphdr {int dummy; } ;
struct ip {int dummy; } ;
struct in_addr {int s_addr; } ;
struct alias_link {int dummy; } ;
struct StartMediaTransmission {int remoteIpAddr; } ;
typedef int ConvDirection ;



__attribute__((used)) static int
alias_skinny_startmedia(struct StartMediaTransmission *start_media,
    struct ip *pip, struct tcphdr *tc,
    struct alias_link *lnk, u_int32_t localIpAddr,
    ConvDirection direction)
{
 struct in_addr dst, src;

 (void)pip;
 (void)tc;
 (void)lnk;
 (void)direction;

 dst.s_addr = start_media->remoteIpAddr;
 src.s_addr = localIpAddr;






 return (0);
}
