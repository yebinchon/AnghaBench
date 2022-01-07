; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.vattr = type { i32 }
%struct.fiobmap2_arg = type { i32, i32, i32 }

@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)* @vn_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_ioctl(%struct.file* %0, i32 %1, i8* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.vattr, align 4
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.fiobmap2_arg*, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 3
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %13, align 8
  %19 = load %struct.vnode*, %struct.vnode** %13, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %91 [
    i32 129, label %22
    i32 128, label %22
    i32 130, label %81
  ]

22:                                               ; preds = %5, %5
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %71 [
    i32 131, label %24
    i32 133, label %48
    i32 132, label %70
    i32 134, label %70
  ]

24:                                               ; preds = %22
  %25 = load %struct.vnode*, %struct.vnode** %13, align 8
  %26 = load i32, i32* @LK_SHARED, align 4
  %27 = load i32, i32* @LK_RETRY, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @vn_lock(%struct.vnode* %25, i32 %28)
  %30 = load %struct.vnode*, %struct.vnode** %13, align 8
  %31 = load %struct.ucred*, %struct.ucred** %10, align 8
  %32 = call i32 @VOP_GETATTR(%struct.vnode* %30, %struct.vattr* %12, %struct.ucred* %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.vnode*, %struct.vnode** %13, align 8
  %34 = call i32 @VOP_UNLOCK(%struct.vnode* %33, i32 0)
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.file*, %struct.file** %7, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast i8* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %24
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %6, align 4
  br label %93

48:                                               ; preds = %22
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to %struct.fiobmap2_arg*
  store %struct.fiobmap2_arg* %50, %struct.fiobmap2_arg** %14, align 8
  %51 = load %struct.vnode*, %struct.vnode** %13, align 8
  %52 = load i32, i32* @LK_SHARED, align 4
  %53 = load i32, i32* @LK_RETRY, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @vn_lock(%struct.vnode* %51, i32 %54)
  %56 = load %struct.vnode*, %struct.vnode** %13, align 8
  %57 = load %struct.fiobmap2_arg*, %struct.fiobmap2_arg** %14, align 8
  %58 = getelementptr inbounds %struct.fiobmap2_arg, %struct.fiobmap2_arg* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fiobmap2_arg*, %struct.fiobmap2_arg** %14, align 8
  %61 = getelementptr inbounds %struct.fiobmap2_arg, %struct.fiobmap2_arg* %60, i32 0, i32 2
  %62 = load %struct.fiobmap2_arg*, %struct.fiobmap2_arg** %14, align 8
  %63 = getelementptr inbounds %struct.fiobmap2_arg, %struct.fiobmap2_arg* %62, i32 0, i32 1
  %64 = load %struct.fiobmap2_arg*, %struct.fiobmap2_arg** %14, align 8
  %65 = getelementptr inbounds %struct.fiobmap2_arg, %struct.fiobmap2_arg* %64, i32 0, i32 0
  %66 = call i32 @VOP_BMAP(%struct.vnode* %56, i32 %59, i32* null, i32* %61, i32* %63, i32* %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.vnode*, %struct.vnode** %13, align 8
  %68 = call i32 @VOP_UNLOCK(%struct.vnode* %67, i32 0)
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %6, align 4
  br label %93

70:                                               ; preds = %22, %22
  store i32 0, i32* %6, align 4
  br label %93

71:                                               ; preds = %22
  %72 = load %struct.vnode*, %struct.vnode** %13, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.file*, %struct.file** %7, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ucred*, %struct.ucred** %10, align 8
  %79 = load %struct.thread*, %struct.thread** %11, align 8
  %80 = call i32 @VOP_IOCTL(%struct.vnode* %72, i32 %73, i8* %74, i32 %77, %struct.ucred* %78, %struct.thread* %79)
  store i32 %80, i32* %6, align 4
  br label %93

81:                                               ; preds = %5
  %82 = load %struct.vnode*, %struct.vnode** %13, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.file*, %struct.file** %7, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ucred*, %struct.ucred** %10, align 8
  %89 = load %struct.thread*, %struct.thread** %11, align 8
  %90 = call i32 @VOP_IOCTL(%struct.vnode* %82, i32 %83, i8* %84, i32 %87, %struct.ucred* %88, %struct.thread* %89)
  store i32 %90, i32* %6, align 4
  br label %93

91:                                               ; preds = %5
  %92 = load i32, i32* @ENOTTY, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %81, %71, %70, %48, %46
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_BMAP(%struct.vnode*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @VOP_IOCTL(%struct.vnode*, i32, i8*, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
