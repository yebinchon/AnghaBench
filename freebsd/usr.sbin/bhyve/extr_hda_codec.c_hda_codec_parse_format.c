
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct audio_params {int rate; int channels; int format; } ;


 int AFMT_S16_LE ;
 int AFMT_S24_LE ;
 int AFMT_S32_LE ;
 int AFMT_U8 ;
 int DPRINTF (char*,int) ;
 int HDA_CODEC_FMT_BASE_MASK ;




 int HDA_CODEC_FMT_BITS_MASK ;
 int HDA_CODEC_FMT_CHAN_MASK ;
 int HDA_CODEC_FMT_DIV_MASK ;
 int HDA_CODEC_FMT_DIV_SHIFT ;



 int HDA_CODEC_FMT_MULT_MASK ;
 int assert (struct audio_params*) ;

__attribute__((used)) static int
hda_codec_parse_format(uint16_t fmt, struct audio_params *params)
{
 uint8_t div = 0;

 assert(params);


 params->rate = (fmt & HDA_CODEC_FMT_BASE_MASK) ? 44100 : 48000;

 switch (fmt & HDA_CODEC_FMT_MULT_MASK) {
 case 130:
  params->rate *= 2;
  break;
 case 129:
  params->rate *= 3;
  break;
 case 128:
  params->rate *= 4;
  break;
 }

 div = (fmt >> HDA_CODEC_FMT_DIV_SHIFT) & HDA_CODEC_FMT_DIV_MASK;
 params->rate /= (div + 1);


 switch (fmt & HDA_CODEC_FMT_BITS_MASK) {
 case 131:
  params->format = AFMT_U8;
  break;
 case 134:
  params->format = AFMT_S16_LE;
  break;
 case 133:
  params->format = AFMT_S24_LE;
  break;
 case 132:
  params->format = AFMT_S32_LE;
  break;
 default:
  DPRINTF("Unknown format bits: 0x%x\n",
      fmt & HDA_CODEC_FMT_BITS_MASK);
  return (-1);
 }


 params->channels = (fmt & HDA_CODEC_FMT_CHAN_MASK) + 1;

 return (0);
}
