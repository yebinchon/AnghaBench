
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef int time_t ;
typedef int iso9660_disk ;
struct TYPE_7__ {scalar_t__ fileDataLength; TYPE_1__* node; TYPE_5__* isoDirRecord; } ;
typedef TYPE_2__ cd9660node ;
struct TYPE_9__ {int size; int date; } ;
struct TYPE_8__ {int st_mtime; scalar_t__ st_ino; } ;
struct TYPE_6__ {int type; int name; } ;


 int ISO_FILENAME_MAXLENGTH_WITH_PADDING ;
 int ISO_FLAG_CLEAR ;
 int ISO_FLAG_DIRECTORY ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int cd9660_bothendian_dword (scalar_t__,int ) ;
 int cd9660_convert_filename (int *,int ,char*,int) ;
 int cd9660_populate_iso_dir_record (TYPE_5__*,int ,int ,int ,char*) ;
 int cd9660_time_915 (int ,int ) ;
 int memset (char*,int ,int) ;
 TYPE_3__ stampst ;
 int strlen (char*) ;
 int time (int *) ;

__attribute__((used)) static int
cd9660_translate_node_common(iso9660_disk *diskStructure, cd9660node *newnode)
{
 time_t tstamp = stampst.st_ino ? stampst.st_mtime : time(((void*)0));
 u_char flag;
 char temp[ISO_FILENAME_MAXLENGTH_WITH_PADDING];


 memset(temp, 0, ISO_FILENAME_MAXLENGTH_WITH_PADDING);

 (void)cd9660_convert_filename(diskStructure, newnode->node->name,
     temp, !(S_ISDIR(newnode->node->type)));

 flag = ISO_FLAG_CLEAR;
 if (S_ISDIR(newnode->node->type))
  flag |= ISO_FLAG_DIRECTORY;

 cd9660_populate_iso_dir_record(newnode->isoDirRecord, 0,
     flag, strlen(temp), temp);





 cd9660_time_915(newnode->isoDirRecord->date, tstamp);

 cd9660_bothendian_dword(newnode->fileDataLength,
     newnode->isoDirRecord->size);

 if (S_ISLNK(newnode->node->type))
  newnode->fileDataLength = 0;

 return 1;
}
