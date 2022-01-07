
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCIM_MSICTRL_64BIT ;
 int PCIM_MSICTRL_VECTOR ;

__attribute__((used)) static int
msi_caplen(int msgctrl)
{
 int len;

 len = 10;

 if (msgctrl & PCIM_MSICTRL_64BIT)
  len += 4;
 return (len);
}
