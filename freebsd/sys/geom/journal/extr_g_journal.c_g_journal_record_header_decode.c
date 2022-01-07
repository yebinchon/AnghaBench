
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;
struct g_journal_record_header {scalar_t__ jrh_nentries; struct g_journal_entry* jrh_entries; int jrh_sum; int jrh_journal_id; int jrh_magic; } ;
struct g_journal_entry {void* je_length; void* je_offset; void* je_joffset; } ;


 int EINVAL ;
 int GJ_RECORD_HEADER_MAGIC ;
 scalar_t__ GJ_RECORD_HEADER_NENTRIES ;
 int bcopy (int const*,int ,int) ;
 scalar_t__ le16dec (int const*) ;
 int le32dec (int const*) ;
 void* le64dec (int const*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
g_journal_record_header_decode(const u_char *data,
    struct g_journal_record_header *hdr)
{
 struct g_journal_entry *ent;
 u_int i;

 bcopy(data, hdr->jrh_magic, sizeof(hdr->jrh_magic));
 data += sizeof(hdr->jrh_magic);
 if (strcmp(hdr->jrh_magic, GJ_RECORD_HEADER_MAGIC) != 0)
  return (EINVAL);
 hdr->jrh_journal_id = le32dec(data);
 data += 8;
 hdr->jrh_nentries = le16dec(data);
 data += 2;
 if (hdr->jrh_nentries > GJ_RECORD_HEADER_NENTRIES)
  return (EINVAL);
 bcopy(data, hdr->jrh_sum, sizeof(hdr->jrh_sum));
 data += 8;
 for (i = 0; i < hdr->jrh_nentries; i++) {
  ent = &hdr->jrh_entries[i];
  ent->je_joffset = le64dec(data);
  data += 8;
  ent->je_offset = le64dec(data);
  data += 8;
  ent->je_length = le64dec(data);
  data += 8;
 }
 return (0);
}
