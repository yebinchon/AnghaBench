
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cctl_devlist_data {size_t level; int * cur_sb; } ;
typedef int XML_Char ;


 int sbuf_bcat (int ,int const*,int) ;

__attribute__((used)) static void
cctl_char_handler(void *user_data, const XML_Char *str, int len)
{
 struct cctl_devlist_data *devlist;

 devlist = (struct cctl_devlist_data *)user_data;

 sbuf_bcat(devlist->cur_sb[devlist->level], str, len);
}
