
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int FW_BUF_SIZE ;
 scalar_t__ GUNZIP_BUF (struct bxe_softc*) ;
 int HILO_U64 (int const,int const) ;
 int ecore_write_big_buf_wb (struct bxe_softc*,int,int) ;
 int min (int,int) ;

__attribute__((used)) static void ecore_init_wr_64(struct bxe_softc *sc, uint32_t addr,
        const uint32_t *data, uint32_t len64)
{
 uint32_t buf_len32 = FW_BUF_SIZE/4;
 uint32_t len = len64*2;
 uint64_t data64 = 0;
 uint32_t i;


 data64 = HILO_U64((*(data + 1)), (*data));

 len64 = min((uint32_t)(FW_BUF_SIZE/8), len64);
 for (i = 0; i < len64; i++) {
  uint64_t *pdata = ((uint64_t *)(GUNZIP_BUF(sc))) + i;

  *pdata = data64;
 }

 for (i = 0; i < len; i += buf_len32) {
  uint32_t cur_len = min(buf_len32, len - i);

  ecore_write_big_buf_wb(sc, addr + i*4, cur_len);
 }
}
