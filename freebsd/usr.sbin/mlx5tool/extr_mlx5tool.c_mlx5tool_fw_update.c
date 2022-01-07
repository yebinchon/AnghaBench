
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct mlx5_tool_addr {int dummy; } ;
struct mlx5_fw_update {scalar_t__ img_fw_data; int img_fw_data_len; int devaddr; } ;
typedef int fwup ;


 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int MLX5_FW_UPDATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 int ioctl (int,int ,struct mlx5_fw_update*) ;
 int memcpy (int *,struct mlx5_tool_addr const*,int) ;
 int memset (struct mlx5_fw_update*,int ,int) ;
 scalar_t__ mmap (int *,int ,int ,int ,int,int ) ;
 int munmap (scalar_t__,int ) ;
 int open (char const*,int ) ;
 int warn (char*,...) ;

__attribute__((used)) static int
mlx5tool_fw_update(int ctldev, const struct mlx5_tool_addr *addr,
    const char *img_fw_path)
{
 struct stat st;
 struct mlx5_fw_update fwup;
 int error, fd, res;

 res = 0;
 fd = open(img_fw_path, O_RDONLY);
 if (fd == -1) {
  warn("Unable to open %s", img_fw_path);
  res = 1;
  goto close_fd;
 }
 error = fstat(fd, &st);
 if (error != 0) {
  warn("Unable to stat %s", img_fw_path);
  res = 1;
  goto close_fd;
 }
 memset(&fwup, 0, sizeof(fwup));
 memcpy(&fwup.devaddr, addr, sizeof(fwup.devaddr));
 fwup.img_fw_data = mmap(((void*)0), st.st_size, PROT_READ, MAP_PRIVATE,
     fd, 0);
 if (fwup.img_fw_data == MAP_FAILED) {
  warn("Unable to mmap %s", img_fw_path);
  res = 1;
  goto close_fd;
 }
 fwup.img_fw_data_len = st.st_size;

 error = ioctl(ctldev, MLX5_FW_UPDATE, &fwup);
 if (error == -1) {
  warn("MLX5_FW_UPDATE");
 }

 munmap(fwup.img_fw_data, st.st_size);
close_fd:
 close(fd);
 return (res);
}
