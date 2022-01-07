
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_io_port ;
typedef int vmci_io_handle ;
typedef int uint8_t ;


 int insb (int ,int *,size_t) ;

void
vmci_read_port_bytes(vmci_io_handle handle, vmci_io_port port, uint8_t *buffer,
    size_t buffer_length)
{

 insb(port, buffer, buffer_length);
}
