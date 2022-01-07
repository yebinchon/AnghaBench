; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_extattr_list_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_extattr_list_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i64*, i32 }
%struct.uio = type { i32, i64, %struct.thread*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i8*, i64, %struct.thread*)* @extattr_list_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extattr_list_vp(%struct.vnode* %0, i32 %1, i8* %2, i64 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.uio, align 8
  %13 = alloca %struct.uio*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.iovec, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @IOSIZE_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  br label %82

24:                                               ; preds = %5
  store %struct.uio* null, %struct.uio** %13, align 8
  store i64* null, i64** %15, align 8
  store i64 0, i64* %17, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 6
  store %struct.iovec* %16, %struct.iovec** %32, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @UIO_READ, align 4
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @UIO_USERSPACE, align 4
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = load %struct.thread*, %struct.thread** %11, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 2
  store %struct.thread* %41, %struct.thread** %42, align 8
  store %struct.uio* %12, %struct.uio** %13, align 8
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %17, align 8
  br label %45

44:                                               ; preds = %24
  store i64* %14, i64** %15, align 8
  br label %45

45:                                               ; preds = %44, %27
  %46 = load %struct.vnode*, %struct.vnode** %7, align 8
  %47 = load i32, i32* @LK_SHARED, align 4
  %48 = load i32, i32* @LK_RETRY, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @vn_lock(%struct.vnode* %46, i32 %49)
  %51 = load %struct.vnode*, %struct.vnode** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.uio*, %struct.uio** %13, align 8
  %54 = load i64*, i64** %15, align 8
  %55 = load %struct.thread*, %struct.thread** %11, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.thread*, %struct.thread** %11, align 8
  %59 = call i32 @VOP_LISTEXTATTR(%struct.vnode* %51, i32 %52, %struct.uio* %53, i64* %54, i32 %57, %struct.thread* %58)
  store i32 %59, i32* %18, align 4
  %60 = load %struct.vnode*, %struct.vnode** %7, align 8
  %61 = call i32 @VOP_UNLOCK(%struct.vnode* %60, i32 0)
  %62 = load %struct.uio*, %struct.uio** %13, align 8
  %63 = icmp ne %struct.uio* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %17, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load %struct.thread*, %struct.thread** %11, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  store i64 %69, i64* %73, align 8
  br label %80

74:                                               ; preds = %45
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.thread*, %struct.thread** %11, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %75, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %64
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %22
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_LISTEXTATTR(%struct.vnode*, i32, %struct.uio*, i64*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
