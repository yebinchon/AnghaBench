; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_rdextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_rdextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.inode = type { %struct.ufs2_dinode* }
%struct.ufs2_dinode = type { i8* }
%struct.fs = type { i32 }
%struct.uio = type { i32, %struct.thread*, i32, i32, i8*, i64, %struct.iovec* }
%struct.iovec = type { i8*, i32* }

@UFS_NXADDR = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@IO_EXT = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.vnode*, %struct.thread*, i32)* @ffs_rdextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_rdextattr(i32** %0, %struct.vnode* %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ufs2_dinode*, align 8
  %12 = alloca %struct.fs*, align 8
  %13 = alloca %struct.uio, align 8
  %14 = alloca %struct.iovec, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.thread* %2, %struct.thread** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = call %struct.inode* @VTOI(%struct.vnode* %18)
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = call %struct.fs* @ITOFS(%struct.inode* %20)
  store %struct.fs* %21, %struct.fs** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %23, align 8
  store %struct.ufs2_dinode* %24, %struct.ufs2_dinode** %11, align 8
  %25 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %11, align 8
  %26 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @UFS_NXADDR, align 4
  %33 = load %struct.fs*, %struct.fs** %12, align 8
  %34 = getelementptr inbounds %struct.fs, %struct.fs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = icmp sgt i32 %31, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @EFBIG, align 4
  store i32 %39, i32* %5, align 4
  br label %78

40:                                               ; preds = %4
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = load i32, i32* @M_TEMP, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = call i32* @malloc(i8* %44, i32 %45, i32 %46)
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  store i32* %48, i32** %49, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 6
  store %struct.iovec* %14, %struct.iovec** %52, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 4
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* @UIO_SYSSPACE, align 4
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @UIO_READ, align 4
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  %61 = load %struct.thread*, %struct.thread** %8, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 1
  store %struct.thread* %61, %struct.thread** %62, align 8
  %63 = load %struct.vnode*, %struct.vnode** %7, align 8
  %64 = load i32, i32* @IO_EXT, align 4
  %65 = load i32, i32* @IO_SYNC, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @ffs_extread(%struct.vnode* %63, %struct.uio* %13, i32 %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %40
  %71 = load i32*, i32** %17, align 8
  %72 = load i32, i32* @M_TEMP, align 4
  %73 = call i32 @free(i32* %71, i32 %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %40
  %76 = load i32*, i32** %17, align 8
  %77 = load i32**, i32*** %6, align 8
  store i32* %76, i32** %77, align 8
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %70, %38
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local %struct.fs* @ITOFS(%struct.inode*) #1

declare dso_local i32* @malloc(i8*, i32, i32) #1

declare dso_local i32 @ffs_extread(%struct.vnode*, %struct.uio*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
