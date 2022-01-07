
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int pcap_fileno (int *) ;

int
pcap_get_selectable_fd(pcap_t *p)
{
 return(pcap_fileno(p));
}
