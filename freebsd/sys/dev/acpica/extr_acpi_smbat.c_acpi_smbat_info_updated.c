
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int getnanotime (struct timespec*) ;
 int smbat ;

__attribute__((used)) static void
acpi_smbat_info_updated(struct timespec *lastupdated)
{

 ACPI_SERIAL_ASSERT(smbat);

 if (lastupdated != ((void*)0))
  getnanotime(lastupdated);
}
