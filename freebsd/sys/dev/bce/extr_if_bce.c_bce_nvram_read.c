
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bce_softc {int dummy; } ;


 int BCE_NVM_COMMAND_FIRST ;
 int BCE_NVM_COMMAND_LAST ;
 int BCE_VERBOSE_NVRAM ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int bce_acquire_nvram_lock (struct bce_softc*) ;
 int bce_disable_nvram_access (struct bce_softc*) ;
 int bce_enable_nvram_access (struct bce_softc*) ;
 int bce_nvram_read_dword (struct bce_softc*,int,int *,int) ;
 int bce_release_nvram_lock (struct bce_softc*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
bce_nvram_read(struct bce_softc *sc, u32 offset, u8 *ret_buf,
 int buf_size)
{
 int rc = 0;
 u32 cmd_flags, offset32, len32, extra;

 DBENTER(BCE_VERBOSE_NVRAM);

 if (buf_size == 0)
  goto bce_nvram_read_exit;


 if ((rc = bce_acquire_nvram_lock(sc)) != 0)
  goto bce_nvram_read_exit;


 bce_enable_nvram_access(sc);

 len32 = buf_size;
 offset32 = offset;
 extra = 0;

 cmd_flags = 0;

 if (offset32 & 3) {
  u8 buf[4];
  u32 pre_len;

  offset32 &= ~3;
  pre_len = 4 - (offset & 3);

  if (pre_len >= len32) {
   pre_len = len32;
   cmd_flags = BCE_NVM_COMMAND_FIRST | BCE_NVM_COMMAND_LAST;
  }
  else {
   cmd_flags = BCE_NVM_COMMAND_FIRST;
  }

  rc = bce_nvram_read_dword(sc, offset32, buf, cmd_flags);

  if (rc)
   return rc;

  memcpy(ret_buf, buf + (offset & 3), pre_len);

  offset32 += 4;
  ret_buf += pre_len;
  len32 -= pre_len;
 }

 if (len32 & 3) {
  extra = 4 - (len32 & 3);
  len32 = (len32 + 4) & ~3;
 }

 if (len32 == 4) {
  u8 buf[4];

  if (cmd_flags)
   cmd_flags = BCE_NVM_COMMAND_LAST;
  else
   cmd_flags = BCE_NVM_COMMAND_FIRST |
        BCE_NVM_COMMAND_LAST;

  rc = bce_nvram_read_dword(sc, offset32, buf, cmd_flags);

  memcpy(ret_buf, buf, 4 - extra);
 }
 else if (len32 > 0) {
  u8 buf[4];


  if (cmd_flags)
   cmd_flags = 0;
  else
   cmd_flags = BCE_NVM_COMMAND_FIRST;

  rc = bce_nvram_read_dword(sc, offset32, ret_buf, cmd_flags);


  offset32 += 4;
  ret_buf += 4;
  len32 -= 4;

  while (len32 > 4 && rc == 0) {
   rc = bce_nvram_read_dword(sc, offset32, ret_buf, 0);


   offset32 += 4;
   ret_buf += 4;
   len32 -= 4;
  }

  if (rc)
   goto bce_nvram_read_locked_exit;

  cmd_flags = BCE_NVM_COMMAND_LAST;
  rc = bce_nvram_read_dword(sc, offset32, buf, cmd_flags);

  memcpy(ret_buf, buf, 4 - extra);
 }

bce_nvram_read_locked_exit:

 bce_disable_nvram_access(sc);
 bce_release_nvram_lock(sc);

bce_nvram_read_exit:
 DBEXIT(BCE_VERBOSE_NVRAM);
 return rc;
}
