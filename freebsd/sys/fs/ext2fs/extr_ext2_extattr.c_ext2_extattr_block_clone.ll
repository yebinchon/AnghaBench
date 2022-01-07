; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_block_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.buf = type { i32 }
%struct.ext2fs_extattr_header = type { i64, i32 }

@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buf**)* @ext2_extattr_block_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_extattr_block_clone(%struct.inode* %0, %struct.buf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buf**, align 8
  %6 = alloca %struct.m_ext2fs*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.ext2fs_extattr_header*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buf** %1, %struct.buf*** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 3
  %13 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  store %struct.m_ext2fs* %13, %struct.m_ext2fs** %6, align 8
  %14 = load %struct.buf**, %struct.buf*** %5, align 8
  %15 = load %struct.buf*, %struct.buf** %14, align 8
  store %struct.buf* %15, %struct.buf** %7, align 8
  %16 = load %struct.buf*, %struct.buf** %7, align 8
  %17 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %16)
  store %struct.ext2fs_extattr_header* %17, %struct.ext2fs_extattr_header** %9, align 8
  %18 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %9, align 8
  %19 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EXTATTR_MAGIC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %9, align 8
  %25 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %88

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i64 @ext2_alloc_meta(%struct.inode* %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOSPC, align 4
  store i32 %36, i32* %3, align 4
  br label %88

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @fsbtodb(%struct.m_ext2fs* %41, i64 %42)
  %44 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %45 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.buf* @getblk(i32 %40, i32 %43, i32 %46, i32 0, i32 0, i32 0)
  store %struct.buf* %47, %struct.buf** %8, align 8
  %48 = load %struct.buf*, %struct.buf** %8, align 8
  %49 = icmp ne %struct.buf* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %37
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %54 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ext2_blkfree(%struct.inode* %51, i64 %52, i32 %55)
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %3, align 4
  br label %88

58:                                               ; preds = %37
  %59 = load %struct.buf*, %struct.buf** %8, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.buf*, %struct.buf** %7, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %66 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32 %61, i32 %64, i32 %67)
  %69 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %9, align 8
  %70 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.buf*, %struct.buf** %7, align 8
  %74 = call i32 @bwrite(%struct.buf* %73)
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ext2_update(i32 %80, i32 1)
  %82 = load %struct.buf*, %struct.buf** %8, align 8
  %83 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %82)
  store %struct.ext2fs_extattr_header* %83, %struct.ext2fs_extattr_header** %9, align 8
  %84 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %9, align 8
  %85 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  %86 = load %struct.buf*, %struct.buf** %8, align 8
  %87 = load %struct.buf**, %struct.buf*** %5, align 8
  store %struct.buf* %86, %struct.buf** %87, align 8
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %58, %50, %35, %28
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf*) #1

declare dso_local i64 @ext2_alloc_meta(%struct.inode*) #1

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i64) #1

declare dso_local i32 @ext2_blkfree(%struct.inode*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @ext2_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
