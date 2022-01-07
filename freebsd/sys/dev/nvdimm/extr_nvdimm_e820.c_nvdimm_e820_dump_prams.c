
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct sbuf {int dummy; } ;
typedef int device_t ;
typedef int buffer ;
struct TYPE_2__ {char const* size; scalar_t__ start; } ;


 int SBUF_FIXEDLEN ;
 int device_get_nameunit (int ) ;
 unsigned int pram_nreg ;
 TYPE_1__* pram_segments ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 int sbuf_printf (struct sbuf*,char*,int,...) ;
 int sbuf_printf_drain ;
 int sbuf_putc (struct sbuf*,char) ;
 int sbuf_set_drain (struct sbuf*,int ,int *) ;

__attribute__((used)) static void
nvdimm_e820_dump_prams(device_t dev, const char *func, int hintunit)
{
 char buffer[256];
 struct sbuf sb;
 bool printed = 0;
 unsigned i;

 sbuf_new(&sb, buffer, sizeof(buffer), SBUF_FIXEDLEN);
 sbuf_set_drain(&sb, sbuf_printf_drain, ((void*)0));

 sbuf_printf(&sb, "%s: %s: ", device_get_nameunit(dev), func);
 if (hintunit < 0)
  sbuf_cat(&sb, "Found BIOS PRAM regions: ");
 else
  sbuf_printf(&sb, "Remaining unallocated PRAM regions after "
      "hint %d: ", hintunit);

 for (i = 0; i < pram_nreg; i++) {
  if (pram_segments[i].size == 0)
   continue;
  if (printed)
   sbuf_putc(&sb, ',');
  else
   printed = 1;
  sbuf_printf(&sb, "0x%jx-0x%jx",
      (uintmax_t)pram_segments[i].start,
      (uintmax_t)pram_segments[i].start + pram_segments[i].size
      - 1);
 }

 if (!printed)
  sbuf_cat(&sb, "<none>");
 sbuf_putc(&sb, '\n');
 sbuf_finish(&sb);
 sbuf_delete(&sb);
}
