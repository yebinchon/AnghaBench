
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int REG_CMD1 ;
 int REG_TEST ;
 int device_printf (int ,char*) ;
 int hz ;
 int isl_write_byte (int ,int ,int ) ;
 int pause (char*,int) ;

__attribute__((used)) static int
init_device(device_t dev, int probe)
{
 int error;




 error = isl_write_byte(dev, REG_TEST, 0);
 if (error)
  goto done;
 error = isl_write_byte(dev, REG_CMD1, 0);
 if (error)
  goto done;

 pause("islinit", hz/100);

done:
 if (error && !probe)
  device_printf(dev, "Unable to initialize\n");
 return (error);
}
