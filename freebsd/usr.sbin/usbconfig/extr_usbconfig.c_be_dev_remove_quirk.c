
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct libusb20_quirk {int quirkname; void* bcdDeviceHigh; void* bcdDeviceLow; void* pid; void* vid; } ;
struct libusb20_backend {int dummy; } ;
typedef int q ;


 int fprintf (int ,char*,char const*) ;
 int libusb20_be_remove_dev_quirk (struct libusb20_backend*,struct libusb20_quirk*) ;
 int memset (struct libusb20_quirk*,int ,int) ;
 int stderr ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
be_dev_remove_quirk(struct libusb20_backend *pbe,
    uint16_t vid, uint16_t pid, uint16_t lorev, uint16_t hirev,
    const char *str)
{
 struct libusb20_quirk q;
 int error;

 memset(&q, 0, sizeof(q));

 q.vid = vid;
 q.pid = pid;
 q.bcdDeviceLow = lorev;
 q.bcdDeviceHigh = hirev;
 strlcpy(q.quirkname, str, sizeof(q.quirkname));

 error = libusb20_be_remove_dev_quirk(pbe, &q);
 if (error) {
  fprintf(stderr, "Removing quirk '%s' failed, continuing.\n", str);
 }
 return;
}
