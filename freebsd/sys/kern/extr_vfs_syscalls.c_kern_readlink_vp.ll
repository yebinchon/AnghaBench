; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_readlink_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_readlink_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32 }
%struct.thread = type { i64*, i32 }
%struct.iovec = type { i8*, i64 }
%struct.uio = type { i32, i32, i64, %struct.thread*, i32, i64, %struct.iovec* }

@.str = private unnamed_addr constant [34 x i8] c"kern_readlink_vp(): vp not locked\00", align 1
@VLNK = common dso_local global i64 0, align 8
@VV_READLINK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*, i32, i64, %struct.thread*)* @kern_readlink_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_readlink_vp(%struct.vnode* %0, i8* %1, i32 %2, i64 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.iovec, align 8
  %13 = alloca %struct.uio, align 8
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.vnode*, %struct.vnode** %7, align 8
  %16 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vnode*, %struct.vnode** %7, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VLNK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load %struct.vnode*, %struct.vnode** %7, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VV_READLINK, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %6, align 4
  br label %61

31:                                               ; preds = %22, %5
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 6
  store %struct.iovec* %12, %struct.iovec** %36, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @UIO_READ, align 4
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.thread*, %struct.thread** %11, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 3
  store %struct.thread* %43, %struct.thread** %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 2
  store i64 %45, i64* %46, align 8
  %47 = load %struct.vnode*, %struct.vnode** %7, align 8
  %48 = load %struct.thread*, %struct.thread** %11, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @VOP_READLINK(%struct.vnode* %47, %struct.uio* %13, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %52, %54
  %56 = load %struct.thread*, %struct.thread** %11, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  store i64 %55, i64* %59, align 8
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %31, %29
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_READLINK(%struct.vnode*, %struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
