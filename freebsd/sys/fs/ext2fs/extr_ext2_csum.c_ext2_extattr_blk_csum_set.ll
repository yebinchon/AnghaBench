; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_extattr_blk_csum_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_extattr_blk_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buf = type { i64 }
%struct.ext2fs_extattr_header = type { i32 }

@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_extattr_blk_csum_set(%struct.inode* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.ext2fs_extattr_header*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %10 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.buf*, %struct.buf** %4, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ext2fs_extattr_header*
  store %struct.ext2fs_extattr_header* %17, %struct.ext2fs_extattr_header** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %5, align 8
  %23 = call i32 @ext2_extattr_blk_csum(%struct.inode* %18, i32 %21, %struct.ext2fs_extattr_header* %22)
  %24 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %5, align 8
  %25 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(i32, i32) #1

declare dso_local i32 @ext2_extattr_blk_csum(%struct.inode*, i32, %struct.ext2fs_extattr_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
