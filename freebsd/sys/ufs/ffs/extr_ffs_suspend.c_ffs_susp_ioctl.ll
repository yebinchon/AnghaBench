; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.mount = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ffs_susp_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ffs_susp_dtor = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ffs_susp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_susp_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.thread*, %struct.thread** %11, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @jailed(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @EPERM, align 4
  store i32 %21, i32* %6, align 4
  br label %74

22:                                               ; preds = %5
  %23 = call i32 @sx_xlock(i32* @ffs_susp_lock)
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %69 [
    i32 128, label %25
    i32 129, label %60
  ]

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call %struct.mount* @vfs_getvfs(i32* %28)
  store %struct.mount* %29, %struct.mount** %12, align 8
  %30 = load %struct.mount*, %struct.mount** %12, align 8
  %31 = icmp eq %struct.mount* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %14, align 4
  br label %71

34:                                               ; preds = %25
  %35 = load %struct.mount*, %struct.mount** %12, align 8
  %36 = call i32 @vfs_busy(%struct.mount* %35, i32 0)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.mount*, %struct.mount** %12, align 8
  %38 = call i32 @vfs_rel(%struct.mount* %37)
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %71

42:                                               ; preds = %34
  %43 = load %struct.mount*, %struct.mount** %12, align 8
  %44 = call i32 @ffs_susp_suspend(%struct.mount* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.mount*, %struct.mount** %12, align 8
  %49 = call i32 @vfs_unbusy(%struct.mount* %48)
  br label %71

50:                                               ; preds = %42
  %51 = load %struct.mount*, %struct.mount** %12, align 8
  %52 = load i32, i32* @ffs_susp_dtor, align 4
  %53 = call i32 @devfs_set_cdevpriv(%struct.mount* %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.mount*, %struct.mount** %12, align 8
  %58 = call i32 @ffs_susp_unsuspend(%struct.mount* %57)
  br label %59

59:                                               ; preds = %56, %50
  br label %71

60:                                               ; preds = %22
  %61 = bitcast %struct.mount** %12 to i8**
  %62 = call i32 @devfs_get_cdevpriv(i8** %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %71

66:                                               ; preds = %60
  %67 = call i32 @sx_xunlock(i32* @ffs_susp_lock)
  %68 = call i32 (...) @devfs_clear_cdevpriv()
  store i32 0, i32* %6, align 4
  br label %74

69:                                               ; preds = %22
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %65, %59, %47, %41, %32
  %72 = call i32 @sx_xunlock(i32* @ffs_susp_lock)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %66, %20
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @jailed(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.mount* @vfs_getvfs(i32*) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @vfs_rel(%struct.mount*) #1

declare dso_local i32 @ffs_susp_suspend(%struct.mount*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.mount*, i32) #1

declare dso_local i32 @ffs_susp_unsuspend(%struct.mount*) #1

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @devfs_clear_cdevpriv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
