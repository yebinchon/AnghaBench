; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.timespec, %struct.timespec, %struct.timespec, i32 }
%struct.timespec = type { i32 }
%struct.cdev_priv = type { %struct.cdev, i32, i32* }

@M_CDEVP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MAKEDEV_NOWAIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cdev* @devfs_alloc(i32 %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev_priv*, align 8
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.timespec, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @M_CDEVP, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAKEDEV_NOWAIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @M_NOWAIT, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @M_WAITOK, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = or i32 %8, %18
  %20 = call %struct.cdev_priv* @malloc(i32 32, i32 %7, i32 %19)
  store %struct.cdev_priv* %20, %struct.cdev_priv** %4, align 8
  %21 = load %struct.cdev_priv*, %struct.cdev_priv** %4, align 8
  %22 = icmp eq %struct.cdev_priv* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.cdev* null, %struct.cdev** %2, align 8
  br label %48

24:                                               ; preds = %17
  %25 = load %struct.cdev_priv*, %struct.cdev_priv** %4, align 8
  %26 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %25, i32 0, i32 1
  %27 = load %struct.cdev_priv*, %struct.cdev_priv** %4, align 8
  %28 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.cdev_priv*, %struct.cdev_priv** %4, align 8
  %30 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %29, i32 0, i32 0
  store %struct.cdev* %30, %struct.cdev** %5, align 8
  %31 = load %struct.cdev*, %struct.cdev** %5, align 8
  %32 = getelementptr inbounds %struct.cdev, %struct.cdev* %31, i32 0, i32 3
  %33 = call i32 @LIST_INIT(i32* %32)
  %34 = call i32 @vfs_timestamp(%struct.timespec* %6)
  %35 = load %struct.cdev*, %struct.cdev** %5, align 8
  %36 = getelementptr inbounds %struct.cdev, %struct.cdev* %35, i32 0, i32 2
  %37 = load %struct.cdev*, %struct.cdev** %5, align 8
  %38 = getelementptr inbounds %struct.cdev, %struct.cdev* %37, i32 0, i32 1
  %39 = load %struct.cdev*, %struct.cdev** %5, align 8
  %40 = getelementptr inbounds %struct.cdev, %struct.cdev* %39, i32 0, i32 0
  %41 = bitcast %struct.timespec* %40 to i8*
  %42 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = bitcast %struct.timespec* %38 to i8*
  %44 = bitcast %struct.timespec* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = bitcast %struct.timespec* %36 to i8*
  %46 = bitcast %struct.timespec* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.cdev*, %struct.cdev** %5, align 8
  store %struct.cdev* %47, %struct.cdev** %2, align 8
  br label %48

48:                                               ; preds = %24, %23
  %49 = load %struct.cdev*, %struct.cdev** %2, align 8
  ret %struct.cdev* %49
}

declare dso_local %struct.cdev_priv* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
