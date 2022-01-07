
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cctl_portlist_data {size_t level; int * cur_sb; } ;
typedef int XML_Char ;


 int sbuf_bcat (int ,int const*,int) ;

__attribute__((used)) static void
cctl_char_phandler(void *user_data, const XML_Char *str, int len)
{
 struct cctl_portlist_data *portlist;

 portlist = (struct cctl_portlist_data *)user_data;

 sbuf_bcat(portlist->cur_sb[portlist->level], str, len);
}
