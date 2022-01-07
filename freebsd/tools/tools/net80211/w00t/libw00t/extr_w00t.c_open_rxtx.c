
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLT_IEEE802_11_RADIO ;
 int open_bpf (char*,int ) ;

int open_rxtx(char *iface, int *rx, int *tx)
{
 *rx = open_bpf(iface, DLT_IEEE802_11_RADIO);
 *tx = *rx;

 return *rx;
}
