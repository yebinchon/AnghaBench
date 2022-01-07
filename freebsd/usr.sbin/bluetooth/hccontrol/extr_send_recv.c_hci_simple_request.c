
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hci_request (int,int,int *,int ,char*,int*) ;

int
hci_simple_request(int s, int opcode, char *rp, int *rp_size)
{
 return (hci_request(s, opcode, ((void*)0), 0, rp, rp_size));
}
