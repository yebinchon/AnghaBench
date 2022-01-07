; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_readlinkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_readlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.nameidata = type { %struct.vnode* }

@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_readlinkat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.nameidata, align 8
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %19 = load i64, i64* %15, align 8
  %20 = load i64, i64* @IOSIZE_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %8, align 4
  br label %56

24:                                               ; preds = %7
  %25 = load i32, i32* @LOOKUP, align 4
  %26 = load i32, i32* @NOFOLLOW, align 4
  %27 = load i32, i32* @LOCKSHARED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @LOCKLEAF, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AUDITVNODE1, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.thread*, %struct.thread** %9, align 8
  %37 = call i32 @NDINIT_AT(%struct.nameidata* %17, i32 %25, i32 %32, i32 %33, i8* %34, i32 %35, %struct.thread* %36)
  %38 = call i32 @namei(%struct.nameidata* %17)
  store i32 %38, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %8, align 4
  br label %56

42:                                               ; preds = %24
  %43 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %44 = call i32 @NDFREE(%struct.nameidata* %17, i32 %43)
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %46 = load %struct.vnode*, %struct.vnode** %45, align 8
  store %struct.vnode* %46, %struct.vnode** %16, align 8
  %47 = load %struct.vnode*, %struct.vnode** %16, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i64, i64* %15, align 8
  %51 = load %struct.thread*, %struct.thread** %9, align 8
  %52 = call i32 @kern_readlink_vp(%struct.vnode* %47, i8* %48, i32 %49, i64 %50, %struct.thread* %51)
  store i32 %52, i32* %18, align 4
  %53 = load %struct.vnode*, %struct.vnode** %16, align 8
  %54 = call i32 @vput(%struct.vnode* %53)
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %42, %40, %22
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @NDINIT_AT(%struct.nameidata*, i32, i32, i32, i8*, i32, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @kern_readlink_vp(%struct.vnode*, i8*, i32, i64, %struct.thread*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
