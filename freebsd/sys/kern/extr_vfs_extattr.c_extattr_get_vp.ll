; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_extattr_get_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_extattr_get_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i64*, i32 }
%struct.uio = type { i32, i64, %struct.thread*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i8*, i8*, i64, %struct.thread*)* @extattr_get_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extattr_get_vp(%struct.vnode* %0, i32 %1, i8* %2, i8* %3, i64 %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.uio, align 8
  %15 = alloca %struct.uio*, align 8
  %16 = alloca %struct.iovec, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @IOSIZE_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %7, align 4
  br label %85

26:                                               ; preds = %6
  %27 = load %struct.vnode*, %struct.vnode** %8, align 8
  %28 = load i32, i32* @LK_SHARED, align 4
  %29 = load i32, i32* @LK_RETRY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @vn_lock(%struct.vnode* %27, i32 %30)
  store %struct.uio* null, %struct.uio** %15, align 8
  store i64* null, i64** %19, align 8
  store i64 0, i64* %17, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 6
  store %struct.iovec* %16, %struct.iovec** %39, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @UIO_READ, align 4
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @UIO_USERSPACE, align 4
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = load %struct.thread*, %struct.thread** %13, align 8
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 2
  store %struct.thread* %48, %struct.thread** %49, align 8
  store %struct.uio* %14, %struct.uio** %15, align 8
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %17, align 8
  br label %52

51:                                               ; preds = %26
  store i64* %18, i64** %19, align 8
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.vnode*, %struct.vnode** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.uio*, %struct.uio** %15, align 8
  %57 = load i64*, i64** %19, align 8
  %58 = load %struct.thread*, %struct.thread** %13, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.thread*, %struct.thread** %13, align 8
  %62 = call i32 @VOP_GETEXTATTR(%struct.vnode* %53, i32 %54, i8* %55, %struct.uio* %56, i64* %57, i32 %60, %struct.thread* %61)
  store i32 %62, i32* %20, align 4
  %63 = load %struct.uio*, %struct.uio** %15, align 8
  %64 = icmp ne %struct.uio* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %17, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %17, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load %struct.thread*, %struct.thread** %13, align 8
  %72 = getelementptr inbounds %struct.thread, %struct.thread* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 %70, i64* %74, align 8
  br label %81

75:                                               ; preds = %52
  %76 = load i64, i64* %18, align 8
  %77 = load %struct.thread*, %struct.thread** %13, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  store i64 %76, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %65
  %82 = load %struct.vnode*, %struct.vnode** %8, align 8
  %83 = call i32 @VOP_UNLOCK(%struct.vnode* %82, i32 0)
  %84 = load i32, i32* %20, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %24
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_GETEXTATTR(%struct.vnode*, i32, i8*, %struct.uio*, i64*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
