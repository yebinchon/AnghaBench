; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_balloc.c_ext2_ext_balloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_balloc.c_ext2_ext_balloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.ucred = type { i32 }
%struct.buf = type { i32 }
%struct.vnode = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@BA_CLRBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, %struct.ucred*, %struct.buf**, i32)* @ext2_ext_balloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_ext_balloc(%struct.inode* %0, i32 %1, i32 %2, %struct.ucred* %3, %struct.buf** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.buf**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.m_ext2fs*, align 8
  %15 = alloca %struct.buf*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.ucred* %3, %struct.ucred** %11, align 8
  store %struct.buf** %4, %struct.buf*** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.buf* null, %struct.buf** %15, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call %struct.vnode* @ITOV(%struct.inode* %21)
  store %struct.vnode* %22, %struct.vnode** %16, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.m_ext2fs*, %struct.m_ext2fs** %24, align 8
  store %struct.m_ext2fs* %25, %struct.m_ext2fs** %14, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %28 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @howmany(i32 %26, i32 %29)
  store i32 %30, i32* %18, align 4
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load %struct.ucred*, %struct.ucred** %11, align 8
  %35 = call i32 @ext4_ext_get_blocks(%struct.inode* %31, i32 %32, i32 %33, %struct.ucred* %34, i32* null, i32* %20, i32* %17)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* %19, align 4
  store i32 %39, i32* %7, align 4
  br label %85

40:                                               ; preds = %6
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.vnode*, %struct.vnode** %16, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %47 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.buf* @getblk(%struct.vnode* %44, i32 %45, i32 %48, i32 0, i32 0, i32 0)
  store %struct.buf* %49, %struct.buf** %15, align 8
  %50 = load %struct.buf*, %struct.buf** %15, align 8
  %51 = icmp ne %struct.buf* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %7, align 4
  br label %85

54:                                               ; preds = %43
  br label %68

55:                                               ; preds = %40
  %56 = load %struct.vnode*, %struct.vnode** %16, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %59 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NOCRED, align 4
  %62 = call i32 @bread(%struct.vnode* %56, i32 %57, i32 %60, i32 %61, %struct.buf** %15)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %19, align 4
  store i32 %66, i32* %7, align 4
  br label %85

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.m_ext2fs*, %struct.m_ext2fs** %14, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @fsbtodb(%struct.m_ext2fs* %69, i32 %70)
  %72 = load %struct.buf*, %struct.buf** %15, align 8
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @BA_CLRBUF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load %struct.buf*, %struct.buf** %15, align 8
  %80 = call i32 @vfs_bio_clrbuf(%struct.buf* %79)
  br label %81

81:                                               ; preds = %78, %68
  %82 = load %struct.buf*, %struct.buf** %15, align 8
  %83 = load %struct.buf**, %struct.buf*** %12, align 8
  store %struct.buf* %82, %struct.buf** %83, align 8
  %84 = load i32, i32* %19, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %65, %52, %38
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @ext4_ext_get_blocks(%struct.inode*, i32, i32, %struct.ucred*, i32*, i32*, i32*) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bread(%struct.vnode*, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @vfs_bio_clrbuf(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
