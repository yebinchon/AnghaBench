
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct udl_softc {int dummy; } ;
struct udl_cmd_buf {int dummy; } ;


 int EAGAIN ;
 int UDL_BULK_CMD_FB_WORD ;
 int UDL_BULK_CMD_FB_WRITE ;
 int UDL_BULK_SOC ;
 struct udl_cmd_buf* udl_cmd_buf_alloc (struct udl_softc*,int) ;
 int udl_cmd_buf_send (struct udl_softc*,struct udl_cmd_buf*) ;
 int udl_cmd_insert_buf_le16 (struct udl_cmd_buf*,int const*,int) ;
 int udl_cmd_insert_int_1 (struct udl_cmd_buf*,int) ;
 int udl_cmd_insert_int_3 (struct udl_cmd_buf*,int ) ;

__attribute__((used)) static int
udl_cmd_write_buf_le16(struct udl_softc *sc, const uint8_t *buf, uint32_t off,
    uint8_t pixels, int flags)
{
 struct udl_cmd_buf *cb;

 cb = udl_cmd_buf_alloc(sc, flags);
 if (cb == ((void*)0))
  return (EAGAIN);

 udl_cmd_insert_int_1(cb, UDL_BULK_SOC);
 udl_cmd_insert_int_1(cb, UDL_BULK_CMD_FB_WRITE | UDL_BULK_CMD_FB_WORD);
 udl_cmd_insert_int_3(cb, off);
 udl_cmd_insert_int_1(cb, pixels);
 udl_cmd_insert_buf_le16(cb, buf, 2 * pixels);
 udl_cmd_buf_send(sc, cb);

 return (0);
}
