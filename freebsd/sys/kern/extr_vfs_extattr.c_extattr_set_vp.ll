; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_extattr_set_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_extattr_set_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i64*, i32 }
%struct.mount = type { i32 }
%struct.uio = type { i32, i64, %struct.thread*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i8*, i8*, i64, %struct.thread*)* @extattr_set_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extattr_set_vp(%struct.vnode* %0, i32 %1, i8* %2, i8* %3, i64 %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.mount*, align 8
  %15 = alloca %struct.uio, align 8
  %16 = alloca %struct.iovec, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* @IOSIZE_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %7, align 4
  br label %78

24:                                               ; preds = %6
  %25 = load %struct.vnode*, %struct.vnode** %8, align 8
  %26 = load i32, i32* @V_WAIT, align 4
  %27 = load i32, i32* @PCATCH, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @vn_start_write(%struct.vnode* %25, %struct.mount** %14, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %7, align 4
  br label %78

34:                                               ; preds = %24
  %35 = load %struct.vnode*, %struct.vnode** %8, align 8
  %36 = load i32, i32* @LK_EXCLUSIVE, align 4
  %37 = load i32, i32* @LK_RETRY, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @vn_lock(%struct.vnode* %35, i32 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 6
  store %struct.iovec* %16, %struct.iovec** %44, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @UIO_WRITE, align 4
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 4
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @UIO_USERSPACE, align 4
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load %struct.thread*, %struct.thread** %13, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  store %struct.thread* %53, %struct.thread** %54, align 8
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %17, align 8
  %56 = load %struct.vnode*, %struct.vnode** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.thread*, %struct.thread** %13, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.thread*, %struct.thread** %13, align 8
  %63 = call i32 @VOP_SETEXTATTR(%struct.vnode* %56, i32 %57, i8* %58, %struct.uio* %15, i32 %61, %struct.thread* %62)
  store i32 %63, i32* %18, align 4
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %17, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load %struct.thread*, %struct.thread** %13, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 %68, i64* %72, align 8
  %73 = load %struct.vnode*, %struct.vnode** %8, align 8
  %74 = call i32 @VOP_UNLOCK(%struct.vnode* %73, i32 0)
  %75 = load %struct.mount*, %struct.mount** %14, align 8
  %76 = call i32 @vn_finished_write(%struct.mount* %75)
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %34, %32, %22
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_SETEXTATTR(%struct.vnode*, i32, i8*, %struct.uio*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
