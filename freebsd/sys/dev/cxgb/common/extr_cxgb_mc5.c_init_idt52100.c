
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc5 {int * adapter; } ;
typedef int adapter_t ;


 int A_MC5_DB_ACK_LRN_CMD ;
 int A_MC5_DB_ACK_SRCH_CMD ;
 int A_MC5_DB_AOPEN_LRN_CMD ;
 int A_MC5_DB_AOPEN_SRCH_CMD ;
 int A_MC5_DB_DATA_READ_CMD ;
 int A_MC5_DB_DATA_WRITE_CMD ;
 int A_MC5_DB_DBGI_CONFIG ;
 int A_MC5_DB_ELOOKUP_CMD ;
 int A_MC5_DB_ILOOKUP_CMD ;
 int A_MC5_DB_PART_ID_INDEX ;
 int A_MC5_DB_POPEN_DATA_WR_CMD ;
 int A_MC5_DB_POPEN_MASK_WR_CMD ;
 int A_MC5_DB_RSP_LATENCY ;
 int A_MC5_DB_SYN_LRN_CMD ;
 int A_MC5_DB_SYN_SRCH_CMD ;
 int DBGI_MODE_IDT52100 ;
 int EIO ;
 int IDT_CMD_LEARN ;
 int IDT_CMD_READ ;
 int IDT_CMD_SEARCH ;
 int IDT_CMD_WRITE ;
 int IDT_DATARY_BASE_ADR0 ;
 scalar_t__ IDT_GMR_BASE_ADR0 ;
 scalar_t__ IDT_LAR_ADR0 ;
 int IDT_LAR_MODE144 ;
 int IDT_MSKARY_BASE_ADR0 ;
 scalar_t__ IDT_SCR_ADR0 ;
 scalar_t__ IDT_SSR0_ADR0 ;
 scalar_t__ IDT_SSR1_ADR0 ;
 int V_LRNLAT (int) ;
 int V_RDLAT (int) ;
 int V_SRCHLAT (int) ;
 int dbgi_wr_data3 (int *,int,int,int) ;
 int init_mask_data_array (struct mc5*,int ,int ,int,int ) ;
 scalar_t__ mc5_write (int *,scalar_t__,int) ;
 int t3_write_reg (int *,int ,int) ;

__attribute__((used)) static int init_idt52100(struct mc5 *mc5)
{
 int i;
 adapter_t *adap = mc5->adapter;

 t3_write_reg(adap, A_MC5_DB_RSP_LATENCY,
       V_RDLAT(0x15) | V_LRNLAT(0x15) | V_SRCHLAT(0x15));
 t3_write_reg(adap, A_MC5_DB_PART_ID_INDEX, 2);





 t3_write_reg(adap, A_MC5_DB_POPEN_DATA_WR_CMD, IDT_CMD_WRITE);
 t3_write_reg(adap, A_MC5_DB_POPEN_MASK_WR_CMD, IDT_CMD_WRITE);
 t3_write_reg(adap, A_MC5_DB_AOPEN_SRCH_CMD, IDT_CMD_SEARCH);
 t3_write_reg(adap, A_MC5_DB_AOPEN_LRN_CMD, IDT_CMD_LEARN);
 t3_write_reg(adap, A_MC5_DB_SYN_SRCH_CMD, IDT_CMD_SEARCH | 0x6000);
 t3_write_reg(adap, A_MC5_DB_SYN_LRN_CMD, IDT_CMD_LEARN);
 t3_write_reg(adap, A_MC5_DB_ACK_SRCH_CMD, IDT_CMD_SEARCH);
 t3_write_reg(adap, A_MC5_DB_ACK_LRN_CMD, IDT_CMD_LEARN);
 t3_write_reg(adap, A_MC5_DB_ILOOKUP_CMD, IDT_CMD_SEARCH);
 t3_write_reg(adap, A_MC5_DB_ELOOKUP_CMD, IDT_CMD_SEARCH | 0x7000);
 t3_write_reg(adap, A_MC5_DB_DATA_WRITE_CMD, IDT_CMD_WRITE);
 t3_write_reg(adap, A_MC5_DB_DATA_READ_CMD, IDT_CMD_READ);


 t3_write_reg(adap, A_MC5_DB_DBGI_CONFIG, DBGI_MODE_IDT52100);


 dbgi_wr_data3(adap, IDT_LAR_MODE144, 0, 0);
 if (mc5_write(adap, IDT_LAR_ADR0, IDT_CMD_WRITE))
  goto err;


 dbgi_wr_data3(adap, 0xffffffff, 0xffffffff, 0);
 if (mc5_write(adap, IDT_SSR0_ADR0, IDT_CMD_WRITE) ||
     mc5_write(adap, IDT_SSR1_ADR0, IDT_CMD_WRITE))
  goto err;


 for (i = 0; i < 32; ++i) {
  if (i >= 12 && i < 15)
   dbgi_wr_data3(adap, 0xfffffff9, 0xffffffff, 0xff);
  else if (i == 15)
   dbgi_wr_data3(adap, 0xfffffff9, 0xffff8007, 0xff);
  else
   dbgi_wr_data3(adap, 0xffffffff, 0xffffffff, 0xff);

  if (mc5_write(adap, IDT_GMR_BASE_ADR0 + i, IDT_CMD_WRITE))
   goto err;
 }


 dbgi_wr_data3(adap, 1, 0, 0);
 if (mc5_write(adap, IDT_SCR_ADR0, IDT_CMD_WRITE))
  goto err;

 return init_mask_data_array(mc5, IDT_MSKARY_BASE_ADR0,
        IDT_DATARY_BASE_ADR0, IDT_CMD_WRITE, 0);
 err:
 return -EIO;
}
