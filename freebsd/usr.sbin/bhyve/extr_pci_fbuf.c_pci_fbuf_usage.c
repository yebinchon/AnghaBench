
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
pci_fbuf_usage(char *opt)
{

 fprintf(stderr, "Invalid fbuf emulation option \"%s\"\r\n", opt);
 fprintf(stderr, "fbuf: {wait,}{vga=on|io|off,}rfb=<ip>:port"
     "{,w=width}{,h=height}\r\n");
}
