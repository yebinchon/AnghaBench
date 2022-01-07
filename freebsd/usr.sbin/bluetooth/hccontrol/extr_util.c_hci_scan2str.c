
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_scan2str(int scan)
{
 static char const * const t[] = {
             "No Scan enabled",
             "Inquiry Scan enabled. Page Scan disabled",
             "Inquiry Scan disabled. Page Scan enabled",
             "Inquiry Scan enabled. Page Scan enabled"
 };

 return (scan >= SIZE(t)? "?" : t[scan]);
}
