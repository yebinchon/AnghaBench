
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sin6_addr; } ;
struct TYPE_5__ {int sin_addr; } ;
struct TYPE_4__ {int sa_family; } ;
union vxlan_sockaddr {TYPE_3__ in6; TYPE_2__ in4; TYPE_1__ sa; } ;
struct vxlan_ftable_entry {scalar_t__ vxlfe_expire; int * vxlfe_mac; int vxlfe_flags; union vxlan_sockaddr vxlfe_raddr; } ;
struct sbuf {int dummy; } ;
typedef int intmax_t ;
typedef int buf ;


 int AF_INET ;
 int ETHER_ADDR_LEN ;
 int INET6_ADDRSTRLEN ;
 int INET_ADDRSTRLEN ;
 scalar_t__ VXLAN_FE_IS_DYNAMIC (struct vxlan_ftable_entry*) ;
 int inet_ntop (int,void const*,char*,int) ;
 scalar_t__ sbuf_error (struct sbuf*) ;
 int sbuf_len (struct sbuf*) ;
 int sbuf_printf (struct sbuf*,char*,char,...) ;
 int sbuf_putc (struct sbuf*,char) ;
 int sbuf_setpos (struct sbuf*,int) ;

__attribute__((used)) static void
vxlan_ftable_entry_dump(struct vxlan_ftable_entry *fe, struct sbuf *sb)
{
 char buf[64];
 const union vxlan_sockaddr *sa;
 const void *addr;
 int i, len, af, width;

 sa = &fe->vxlfe_raddr;
 af = sa->sa.sa_family;
 len = sbuf_len(sb);

 sbuf_printf(sb, "%c 0x%02X ", VXLAN_FE_IS_DYNAMIC(fe) ? 'D' : 'S',
     fe->vxlfe_flags);

 for (i = 0; i < ETHER_ADDR_LEN - 1; i++)
  sbuf_printf(sb, "%02X:", fe->vxlfe_mac[i]);
 sbuf_printf(sb, "%02X ", fe->vxlfe_mac[i]);

 if (af == AF_INET) {
  addr = &sa->in4.sin_addr;
  width = INET_ADDRSTRLEN - 1;
 } else {
  addr = &sa->in6.sin6_addr;
  width = INET6_ADDRSTRLEN - 1;
 }
 inet_ntop(af, addr, buf, sizeof(buf));
 sbuf_printf(sb, "%*s ", width, buf);

 sbuf_printf(sb, "%08jd", (intmax_t)fe->vxlfe_expire);

 sbuf_putc(sb, '\n');


 if (sbuf_error(sb) != 0)
  sbuf_setpos(sb, len);
}
