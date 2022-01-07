
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_params {int fd; int inited; int format; int channels; int rate; scalar_t__ dir; int dev_name; } ;
struct audio {int fd; int inited; int format; int channels; int rate; scalar_t__ dir; int dev_name; } ;
typedef int audio_buf_info ;


 int DPRINTF (char*,int,...) ;
 int SNDCTL_DSP_CHANNELS ;
 int SNDCTL_DSP_GETISPACE ;
 int SNDCTL_DSP_GETOSPACE ;
 int SNDCTL_DSP_RESET ;
 int SNDCTL_DSP_SETFMT ;
 int SNDCTL_DSP_SPEED ;
 int assert (struct audio_params*) ;
 int errno ;
 int ioctl (int,int ,int*) ;

int
audio_set_params(struct audio *aud, struct audio_params *params)
{
 int audio_fd;
 int format, channels, rate;
 int err;




 assert(aud);
 assert(params);

 if ((audio_fd = aud->fd) < 0) {
  DPRINTF("Incorrect audio device descriptor for %s\n",
      aud->dev_name);
  return (-1);
 }


 if (aud->inited) {
  err = ioctl(audio_fd, SNDCTL_DSP_RESET, ((void*)0));
  if (err == -1) {
   DPRINTF("Failed to reset fd: %d, errno: %d\n",
       aud->fd, errno);
   return (-1);
  }
 } else
  aud->inited = 1;


 format = params->format;
 err = ioctl(audio_fd, SNDCTL_DSP_SETFMT, &format);
 if (err == -1) {
  DPRINTF("Fail to set fmt: 0x%x errno: %d\n",
      params->format, errno);
  return -1;
 }


 if (format != params->format) {
  DPRINTF("Mismatch format: 0x%x params->format: 0x%x\n",
      format, params->format);
  return -1;
 }


 channels = params->channels;
 err = ioctl(audio_fd, SNDCTL_DSP_CHANNELS, &channels);
 if (err == -1) {
  DPRINTF("Fail to set channels: %d errno: %d\n",
      params->channels, errno);
  return -1;
 }


 if (channels != params->channels) {
  DPRINTF("Mismatch channels: %d params->channels: %d\n",
      channels, params->channels);
  return -1;
 }


 rate = params->rate;
 err = ioctl(audio_fd, SNDCTL_DSP_SPEED, &rate);
 if (err == -1) {
  DPRINTF("Fail to set speed: %d errno: %d\n",
      params->rate, errno);
  return -1;
 }


 if (rate != params->rate) {
  DPRINTF("Mismatch rate: %d params->rate: %d\n",
      rate, params->rate);
  return -1;
 }
 return 0;
}
