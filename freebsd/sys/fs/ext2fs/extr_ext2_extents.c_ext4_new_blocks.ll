; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_new_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_new_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64 }
%struct.ucred = type { i32 }

@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i32, i64, %struct.ucred*, i64*, i32*)* @ext4_new_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_new_blocks(%struct.inode* %0, i32 %1, i64 %2, %struct.ucred* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.m_ext2fs*, align 8
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.ucred* %3, %struct.ucred** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i64*, i64** %12, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %59

20:                                               ; preds = %6
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 3
  %23 = load %struct.m_ext2fs*, %struct.m_ext2fs** %22, align 8
  store %struct.m_ext2fs* %23, %struct.m_ext2fs** %14, align 8
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @EXT2_LOCK(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %32 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.ucred*, %struct.ucred** %11, align 8
  %36 = call i32 @ext2_alloc(%struct.inode* %28, i32 %29, i64 %30, i32 %34, %struct.ucred* %35, i64* %15)
  %37 = load i32*, i32** %13, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %59

42:                                               ; preds = %20
  %43 = load i64, i64* %15, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* @IN_CHANGE, align 4
  %47 = load i32, i32* @IN_UPDATE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ext2_update(i32 %55, i32 1)
  br label %57

57:                                               ; preds = %45, %42
  %58 = load i64, i64* %15, align 8
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %57, %41, %19
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

declare dso_local i32 @EXT2_LOCK(i32) #1

declare dso_local i32 @ext2_alloc(%struct.inode*, i32, i64, i32, %struct.ucred*, i64*) #1

declare dso_local i32 @ext2_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
