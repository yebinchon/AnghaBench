
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_chipid {scalar_t__ chip_type; } ;
typedef int device_t ;


 struct bhnd_chipid* BHNDB_GET_CHIPID (int ,int ) ;
 scalar_t__ BHND_CHIPTYPE_BCMA ;
 int ENXIO ;
 int bcma_probe (int ) ;
 int bhnd_set_default_bus_desc (int ,struct bhnd_chipid const*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
bcma_bhndb_probe(device_t dev)
{
 const struct bhnd_chipid *cid;
 int error;


 if ((error = bcma_probe(dev)) > 0)
  return (error);


 cid = BHNDB_GET_CHIPID(device_get_parent(dev), dev);
 if (cid->chip_type != BHND_CHIPTYPE_BCMA)
  return (ENXIO);


 bhnd_set_default_bus_desc(dev, cid);

 return (error);
}
