; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fhstatfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_fhstatfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.statfs = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }

@PRIV_VFS_FHSTATFS = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_fhstatfs(%struct.thread* %0, i64 %1, %struct.statfs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.statfs*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_3__* %5 to i64*
  store i64 %1, i64* %11, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.statfs* %2, %struct.statfs** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %6, align 8
  %13 = load i32, i32* @PRIV_VFS_FHSTATFS, align 4
  %14 = call i32 @priv_check(%struct.thread* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %21 = call %struct.mount* @vfs_busyfs(i32* %20)
  store %struct.mount* %21, %struct.mount** %8, align 8
  %22 = icmp eq %struct.mount* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ESTALE, align 4
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %19
  %26 = load %struct.mount*, %struct.mount** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %28 = load i32, i32* @LK_EXCLUSIVE, align 4
  %29 = call i32 @VFS_FHTOVP(%struct.mount* %26, i32* %27, i32 %28, %struct.vnode** %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.mount*, %struct.mount** %8, align 8
  %34 = call i32 @vfs_unbusy(%struct.mount* %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %25
  %37 = load %struct.vnode*, %struct.vnode** %9, align 8
  %38 = call i32 @vput(%struct.vnode* %37)
  %39 = load %struct.thread*, %struct.thread** %6, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mount*, %struct.mount** %8, align 8
  %43 = call i32 @prison_canseemount(i32 %41, %struct.mount* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.mount*, %struct.mount** %8, align 8
  %49 = load %struct.statfs*, %struct.statfs** %7, align 8
  %50 = call i32 @VFS_STATFS(%struct.mount* %48, %struct.statfs* %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load %struct.mount*, %struct.mount** %8, align 8
  %53 = call i32 @vfs_unbusy(%struct.mount* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %32, %23, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local %struct.mount* @vfs_busyfs(i32*) #1

declare dso_local i32 @VFS_FHTOVP(%struct.mount*, i32*, i32, %struct.vnode**) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @prison_canseemount(i32, %struct.mount*) #1

declare dso_local i32 @VFS_STATFS(%struct.mount*, %struct.statfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
