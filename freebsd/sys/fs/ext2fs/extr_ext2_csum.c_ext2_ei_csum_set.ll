; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_ei_csum_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_ei_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.ext2fs_dinode = type { i32, i64, i32 }

@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4
@E2FS_REV0_INODE_SIZE = common dso_local global i64 0, align 8
@EXT2_INODE_CSUM_HI_EXTRA_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_ei_csum_set(%struct.inode* %0, %struct.ext2fs_dinode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext2fs_dinode*, align 8
  %5 = alloca %struct.m_ext2fs*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ext2fs_dinode* %1, %struct.ext2fs_dinode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  store %struct.m_ext2fs* %9, %struct.m_ext2fs** %5, align 8
  %10 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %11 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %12 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %4, align 8
  %18 = call i32 @ext2_ei_csum(%struct.inode* %16, %struct.ext2fs_dinode* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 65535
  %21 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %4, align 8
  %22 = getelementptr inbounds %struct.ext2fs_dinode, %struct.ext2fs_dinode* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %24 = call i64 @EXT2_INODE_SIZE(%struct.m_ext2fs* %23)
  %25 = load i64, i64* @E2FS_REV0_INODE_SIZE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %4, align 8
  %29 = getelementptr inbounds %struct.ext2fs_dinode, %struct.ext2fs_dinode* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EXT2_INODE_CSUM_HI_EXTRA_END, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 16
  %36 = load %struct.ext2fs_dinode*, %struct.ext2fs_dinode** %4, align 8
  %37 = getelementptr inbounds %struct.ext2fs_dinode, %struct.ext2fs_dinode* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %14, %33, %27, %15
  ret void
}

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_ei_csum(%struct.inode*, %struct.ext2fs_dinode*) #1

declare dso_local i64 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
