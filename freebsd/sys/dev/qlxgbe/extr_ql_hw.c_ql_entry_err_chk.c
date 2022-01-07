
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ entry_capture_size; int driver_flags; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ ql_minidump_entry_t ;


 int QL_DBG_SIZE_ERR_FLAG ;

__attribute__((used)) static void
ql_entry_err_chk(ql_minidump_entry_t *entry, uint32_t esize)
{
 if (esize != entry->hdr.entry_capture_size) {
  entry->hdr.entry_capture_size = esize;
  entry->hdr.driver_flags |= QL_DBG_SIZE_ERR_FLAG;
 }
 return;
}
