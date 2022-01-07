
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct opal_i2c_softc {int opal_id; } ;
struct opal_i2c_request {int buffer_pa; int size; int addr; int type; } ;
struct iic_msg {int flags; int slave; scalar_t__ buf; int len; } ;
typedef int req ;
typedef int device_t ;


 int I2C_LOCK (struct opal_i2c_softc*) ;
 int I2C_UNLOCK (struct opal_i2c_softc*) ;
 int IIC_M_RD ;
 int OPAL_I2C_RAW_READ ;
 int OPAL_I2C_RAW_WRITE ;
 struct opal_i2c_softc* device_get_softc (int ) ;
 int htobe16 (int) ;
 int htobe32 (int ) ;
 int htobe64 (int ) ;
 int i2c_opal_send_request (int ,struct opal_i2c_request*) ;
 int memset (struct opal_i2c_request*,int ,int) ;
 int pmap_kextract (int ) ;

__attribute__((used)) static int
opal_i2c_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 struct opal_i2c_softc *sc;
 int i, err = 0;
 struct opal_i2c_request req;

 sc = device_get_softc(dev);

 memset(&req, 0, sizeof(req));

 I2C_LOCK(sc);
 for (i = 0; i < nmsgs; i++) {
  req.type = (msgs[i].flags & IIC_M_RD) ?
      OPAL_I2C_RAW_READ : OPAL_I2C_RAW_WRITE;
  req.addr = htobe16(msgs[i].slave >> 1);
  req.size = htobe32(msgs[i].len);
  req.buffer_pa = htobe64(pmap_kextract((uint64_t)msgs[i].buf));

  err = i2c_opal_send_request(sc->opal_id, &req);
 }
 I2C_UNLOCK(sc);

 return (err);
}
