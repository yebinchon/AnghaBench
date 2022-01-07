; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fhlinkat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fhlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }

@PRIV_VFS_GETFH = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i8*, i32, %struct.TYPE_5__*)* @kern_fhlinkat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_fhlinkat(%struct.thread* %0, i32 %1, i8* %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca %struct.mount*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = load i32, i32* @PRIV_VFS_GETFH, align 4
  %18 = call i32 @priv_check(%struct.thread* %16, i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %15, align 4
  store i32 %22, i32* %6, align 4
  br label %63

23:                                               ; preds = %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = call i32 @copyin(%struct.TYPE_5__* %24, %struct.TYPE_5__* %12, i32 8)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %6, align 4
  br label %63

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %52, %30
  %32 = call i32 (...) @bwillwrite()
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %34 = call %struct.mount* @vfs_busyfs(i32* %33)
  store %struct.mount* %34, %struct.mount** %13, align 8
  %35 = icmp eq %struct.mount* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ESTALE, align 4
  store i32 %37, i32* %6, align 4
  br label %63

38:                                               ; preds = %31
  %39 = load %struct.mount*, %struct.mount** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %41 = load i32, i32* @LK_SHARED, align 4
  %42 = call i32 @VFS_FHTOVP(%struct.mount* %39, i32* %40, i32 %41, %struct.vnode** %14)
  store i32 %42, i32* %15, align 4
  %43 = load %struct.mount*, %struct.mount** %13, align 8
  %44 = call i32 @vfs_unbusy(%struct.mount* %43)
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %6, align 4
  br label %63

49:                                               ; preds = %38
  %50 = load %struct.vnode*, %struct.vnode** %14, align 8
  %51 = call i32 @VOP_UNLOCK(%struct.vnode* %50, i32 0)
  br label %52

52:                                               ; preds = %49
  %53 = load %struct.thread*, %struct.thread** %7, align 8
  %54 = load %struct.vnode*, %struct.vnode** %14, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @kern_linkat_vp(%struct.thread* %53, %struct.vnode* %54, i32 %55, i8* %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %31, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %47, %36, %28, %21
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @copyin(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @bwillwrite(...) #1

declare dso_local %struct.mount* @vfs_busyfs(i32*) #1

declare dso_local i32 @VFS_FHTOVP(%struct.mount*, i32*, i32, %struct.vnode**) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @kern_linkat_vp(%struct.thread*, %struct.vnode*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
