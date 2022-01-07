
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_long ;
typedef int u_int ;
struct resource {int dummy; } ;
struct pccard_tuple {int ptr; int mult; int code; int length; scalar_t__ memh; int memt; } ;
typedef scalar_t__ (* pccard_scan_t ) (struct pccard_tuple*,void*) ;
typedef int int16_t ;
typedef int device_t ;


 int CARD_SET_RES_FLAGS (int ,int ,int ,int,int ) ;

 int CISTPL_END ;
 int const CISTPL_LINKTARGET ;




 int CISTPL_NULL ;
 int DEVPRINTF (int ) ;
 int DPRINTF (char*) ;
 int PCCARD_A_MEM_ATTR ;
 int PCCARD_A_MEM_COM ;
 int PCCARD_CIS_SIZE ;
 char PCCARD_MFC_MEM_COMMON ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_anywhere (int ,int ,int*,int,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_space_read_1 (int ,scalar_t__,int ) ;
 int device_printf (int ,char*) ;
 int howmany (int,int) ;
 int panic (char*) ;
 void* pccard_cis_read_1 (struct pccard_tuple*,int) ;
 char pccard_tuple_read_1 (struct pccard_tuple*,int) ;
 int pccard_tuple_read_2 (struct pccard_tuple*,int) ;
 void* pccard_tuple_read_4 (struct pccard_tuple*,int) ;
 int printf (char*) ;
 scalar_t__ rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_make_alignment_flags (int) ;
 scalar_t__ stub1 (struct pccard_tuple*,void*) ;
 scalar_t__ stub2 (struct pccard_tuple*,void*) ;
 scalar_t__ stub3 (struct pccard_tuple*,void*) ;
 scalar_t__ stub4 (struct pccard_tuple*,void*) ;
 scalar_t__ stub5 (struct pccard_tuple*,void*) ;
 scalar_t__ stub6 (struct pccard_tuple*,void*) ;

int
pccard_scan_cis(device_t bus, device_t dev, pccard_scan_t fct, void *arg)
{
 struct resource *res;
 int rid;
 struct pccard_tuple tuple;
 int longlink_present;
 int longlink_common;
 u_long longlink_addr;
 int mfc_count;
 int mfc_index;



 struct {
  int common;
  u_long addr;
 } mfc[256 / 5];
 int ret;

 ret = 0;
 rid = 0;
 res = bus_alloc_resource_anywhere(dev, SYS_RES_MEMORY, &rid,
     PCCARD_CIS_SIZE, RF_ACTIVE | rman_make_alignment_flags(64*1024));
 if (res == ((void*)0)) {
  device_printf(dev, "can't alloc memory to read attributes\n");
  return -1;
 }
 CARD_SET_RES_FLAGS(bus, dev, SYS_RES_MEMORY, rid, PCCARD_A_MEM_ATTR);
 tuple.memt = rman_get_bustag(res);
 tuple.memh = rman_get_bushandle(res);
 tuple.ptr = 0;

 DPRINTF(("cis mem map %#x (resource: %#jx)\n",
     (unsigned int) tuple.memh, rman_get_start(res)));

 tuple.mult = 2;

 longlink_present = 1;
 longlink_common = 1;
 longlink_addr = 0;

 mfc_count = 0;
 mfc_index = 0;

 DEVPRINTF((dev, "CIS tuple chain:\n"));

 while (1) {
  while (1) {






   if (tuple.mult * tuple.ptr >= PCCARD_CIS_SIZE - 1
       - 32 ) {
    printf("CIS is too long -- truncating\n");
    tuple.code = CISTPL_END;
   } else {

    tuple.code = pccard_cis_read_1(&tuple, tuple.ptr);
   }



   if (tuple.code == CISTPL_NULL) {







    if ((*fct)(&tuple, arg)) {
     ret = 1;
     goto done;
    }
    tuple.ptr++;
    continue;
   } else if (tuple.code == CISTPL_END) {
    DPRINTF(("CISTPL_END\n ff\n"));


    if ((*fct)(&tuple, arg)) {
     ret = 1;
     goto done;
    }
    tuple.ptr++;
    break;
   }


   tuple.length = pccard_cis_read_1(&tuple, tuple.ptr + 1);
   switch (tuple.code) {
   case 131:
   case 130:
    if ((*fct)(&tuple, arg)) {
     ret = 1;
     goto done;
    }
    if (tuple.length < 4) {
     DPRINTF(("CISTPL_LONGLINK_%s too "
         "short %d\n",
         longlink_common ? "C" : "A",
         tuple.length));
     break;
    }
    longlink_present = 1;
    longlink_common = (tuple.code ==
        130) ? 1 : 0;
    longlink_addr = pccard_tuple_read_4(&tuple, 0);
    DPRINTF(("CISTPL_LONGLINK_%s %#lx\n",
        longlink_common ? "C" : "A",
        longlink_addr));
    break;
   case 128:
    if ((*fct)(&tuple, arg)) {
     ret = 1;
     goto done;
    }
    longlink_present = 0;
    DPRINTF(("CISTPL_NO_LINK\n"));
    break;
   case 132:
    if ((*fct)(&tuple, arg)) {
     ret = 1;
     goto done;
    }
    if (tuple.length < 5) {
     DPRINTF(("CISTPL_CHECKSUM too "
         "short %d\n", tuple.length));
     break;
    } {
     int16_t offset;
     u_long addr, length;
     u_int cksum, sum;
     int i;

     offset = (uint16_t)
         pccard_tuple_read_2(&tuple, 0);
     length = pccard_tuple_read_2(&tuple, 2);
     cksum = pccard_tuple_read_1(&tuple, 4);

     addr = tuple.ptr + offset;

     DPRINTF(("CISTPL_CHECKSUM addr=%#lx "
         "len=%#lx cksum=%#x",
         addr, length, cksum));





     if ((addr >= PCCARD_CIS_SIZE) ||
         ((addr + length) >=
         PCCARD_CIS_SIZE)) {
      DPRINTF((" skipped, "
          "too distant\n"));
      break;
     }
     sum = 0;
     for (i = 0; i < length; i++)
      sum +=
          bus_space_read_1(tuple.memt,
          tuple.memh,
          addr + tuple.mult * i);
     if (cksum != (sum & 0xff)) {
      DPRINTF((" failed sum=%#x\n",
          sum));
      device_printf(dev,
          "CIS checksum failed\n");







     } else {
      DPRINTF((" ok\n"));
     }
    }
    break;
   case 129:
    if (tuple.length < 1) {
     DPRINTF(("CISTPL_LONGLINK_MFC too "
         "short %d\n", tuple.length));
     break;
    }
    if (((tuple.length - 1) % 5) != 0) {
     DPRINTF(("CISTPL_LONGLINK_MFC bogus "
         "length %d\n", tuple.length));
     break;
    }




    {
     int i, tmp_count;







     tmp_count =
         pccard_tuple_read_1(&tuple, 0);

     DPRINTF(("CISTPL_LONGLINK_MFC %d",
         tmp_count));






     if (tuple.length != (tmp_count*5 + 1)) {
      DPRINTF((" bogus length %d\n",
          tuple.length));
      break;
     }





     if (tmp_count >
         howmany(sizeof mfc, sizeof mfc[0]))
      panic("CISTPL_LONGLINK_MFC mfc "
          "count would blow stack");
                                        mfc_count = tmp_count;
     for (i = 0; i < mfc_count; i++) {
      mfc[i].common =
          (pccard_tuple_read_1(&tuple,
          1 + 5 * i) ==
          PCCARD_MFC_MEM_COMMON) ?
          1 : 0;
      mfc[i].addr =
          pccard_tuple_read_4(&tuple,
          1 + 5 * i + 1);
      DPRINTF((" %s:%#lx",
          mfc[i].common ? "common" :
          "attr", mfc[i].addr));
     }
     DPRINTF(("\n"));
    }





   default:
    {
     if ((*fct)(&tuple, arg)) {
      ret = 1;
      goto done;
     }
    }
    break;
   }
   tuple.ptr += 2 + tuple.length;
  }
  while (1) {
   if (longlink_present) {
    CARD_SET_RES_FLAGS(bus, dev, SYS_RES_MEMORY,
        rid, longlink_common ?
        PCCARD_A_MEM_COM : PCCARD_A_MEM_ATTR);
    DPRINTF(("cis mem map %#x\n",
        (unsigned int) tuple.memh));
    tuple.mult = longlink_common ? 1 : 2;
    tuple.ptr = longlink_addr;
    longlink_present = 0;
    longlink_common = 1;
    longlink_addr = 0;
   } else if (mfc_count && (mfc_index < mfc_count)) {
    CARD_SET_RES_FLAGS(bus, dev, SYS_RES_MEMORY,
        rid, mfc[mfc_index].common ?
        PCCARD_A_MEM_COM : PCCARD_A_MEM_ATTR);
    DPRINTF(("cis mem map %#x\n",
        (unsigned int) tuple.memh));

    tuple.mult = mfc[mfc_index].common ? 1 : 2;
    tuple.ptr = mfc[mfc_index].addr;
    mfc_index++;
   } else {
    goto done;
   }


   tuple.code = pccard_cis_read_1(&tuple, tuple.ptr);
   if (tuple.code != CISTPL_LINKTARGET) {
    DPRINTF(("CISTPL_LINKTARGET expected, "
        "code %#02x observed\n", tuple.code));
    continue;
   }
   tuple.length = pccard_cis_read_1(&tuple, tuple.ptr + 1);
   if (tuple.length < 3) {
    DPRINTF(("CISTPL_LINKTARGET too short %d\n",
        tuple.length));
    continue;
   }
   if ((pccard_tuple_read_1(&tuple, 0) != 'C') ||
       (pccard_tuple_read_1(&tuple, 1) != 'I') ||
       (pccard_tuple_read_1(&tuple, 2) != 'S')) {
    DPRINTF(("CISTPL_LINKTARGET magic "
        "%02x%02x%02x incorrect\n",
        pccard_tuple_read_1(&tuple, 0),
        pccard_tuple_read_1(&tuple, 1),
        pccard_tuple_read_1(&tuple, 2)));
    continue;
   }
   tuple.ptr += 2 + tuple.length;
   break;
  }
 }

done:
 bus_release_resource(dev, SYS_RES_MEMORY, rid, res);

 return (ret);
}
