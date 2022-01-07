; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_extattr_blk_csum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_extattr_blk_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32, i32 }
%struct.ext2fs_extattr_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ext2fs_extattr_header*)* @ext2_extattr_blk_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_extattr_blk_csum(%struct.inode* %0, i32 %1, %struct.ext2fs_extattr_header* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2fs_extattr_header*, align 8
  %7 = alloca %struct.m_ext2fs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext2fs_extattr_header* %2, %struct.ext2fs_extattr_header** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.m_ext2fs*, %struct.m_ext2fs** %11, align 8
  store %struct.m_ext2fs* %12, %struct.m_ext2fs** %7, align 8
  %13 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %6, align 8
  %14 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %6, align 8
  %17 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %19 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @calculate_crc32c(i32 %20, i32* %5, i32 4)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %6, align 8
  %24 = bitcast %struct.ext2fs_extattr_header* %23 to i32*
  %25 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %26 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @calculate_crc32c(i32 %22, i32* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %6, align 8
  %31 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @calculate_crc32c(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
