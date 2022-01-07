
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int htonl (int) ;

__attribute__((used)) static void
marker_fill(uint64_t* buf, int file_ofs, size_t len, int is_follower){
  int ofs;
  uint32_t lead_mark = 0x4441454c;
  uint32_t follow_mark = 0x4c4c4f46;
  for (ofs = file_ofs; ofs < file_ofs + len; ofs += sizeof(uint64_t)){
    uint64_t mark = ((is_follower ?
          (uint64_t)follow_mark : (uint64_t)lead_mark) << (uint64_t)32) |
      htonl((ofs & 0xFFFFFFFF));
    int buf_idx = (ofs - file_ofs) / sizeof(uint64_t);
    buf[buf_idx] = mark;
  }
}
