; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_read_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_read_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* }
%struct.file = type { i32 }
%struct.uio = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { %struct.file* }
%struct.cdev = type { i32 }
%struct.cdevsw = type { i32 (%struct.cdev.0*, %struct.uio*, i32)* }
%struct.cdev.0 = type opaque

@DEVFS_IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@vnops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@IO_DIRECT = common dso_local global i32 0, align 4
@FOF_NOLOCK = common dso_local global i32 0, align 4
@FOF_NEXTOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @devfs_read_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_read_f(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.cdev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.cdevsw*, align 8
  %18 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.uio* %1, %struct.uio** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %19 = load %struct.uio*, %struct.uio** %8, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DEVFS_IOSIZE_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %108

26:                                               ; preds = %5
  %27 = load %struct.thread*, %struct.thread** %11, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.file*, %struct.file** %28, align 8
  store %struct.file* %29, %struct.file** %18, align 8
  %30 = load %struct.file*, %struct.file** %7, align 8
  %31 = call i32 @devfs_fp_check(%struct.file* %30, %struct.cdev** %12, %struct.cdevsw** %17, i32* %15)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)*, i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vnops, i32 0, i32 0), align 8
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = load %struct.uio*, %struct.uio** %8, align 8
  %38 = load %struct.ucred*, %struct.ucred** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.thread*, %struct.thread** %11, align 8
  %41 = call i32 %35(%struct.file* %36, %struct.uio* %37, %struct.ucred* %38, i32 %39, %struct.thread* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %108

43:                                               ; preds = %26
  %44 = load %struct.uio*, %struct.uio** %8, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %16, align 8
  %47 = load %struct.file*, %struct.file** %7, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = load i32, i32* @O_DIRECT, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @O_DIRECT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load i32, i32* @IO_DIRECT, align 4
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %58, %43
  %63 = load %struct.file*, %struct.file** %7, align 8
  %64 = load %struct.uio*, %struct.uio** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @FOF_NOLOCK, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @foffset_lock_uio(%struct.file* %63, %struct.uio* %64, i32 %67)
  %69 = load %struct.cdevsw*, %struct.cdevsw** %17, align 8
  %70 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %69, i32 0, i32 0
  %71 = load i32 (%struct.cdev.0*, %struct.uio*, i32)*, i32 (%struct.cdev.0*, %struct.uio*, i32)** %70, align 8
  %72 = load %struct.cdev*, %struct.cdev** %12, align 8
  %73 = bitcast %struct.cdev* %72 to %struct.cdev.0*
  %74 = load %struct.uio*, %struct.uio** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 %71(%struct.cdev.0* %73, %struct.uio* %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.uio*, %struct.uio** %8, align 8
  %78 = getelementptr inbounds %struct.uio, %struct.uio* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %16, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i64, i64* %16, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85, %62
  %89 = load %struct.cdev*, %struct.cdev** %12, align 8
  %90 = getelementptr inbounds %struct.cdev, %struct.cdev* %89, i32 0, i32 0
  %91 = call i32 @devfs_timestamp(i32* %90)
  br label %92

92:                                               ; preds = %88, %85, %82
  %93 = load %struct.file*, %struct.file** %18, align 8
  %94 = load %struct.thread*, %struct.thread** %11, align 8
  %95 = getelementptr inbounds %struct.thread, %struct.thread* %94, i32 0, i32 0
  store %struct.file* %93, %struct.file** %95, align 8
  %96 = load %struct.cdev*, %struct.cdev** %12, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @dev_relthread(%struct.cdev* %96, i32 %97)
  %99 = load %struct.file*, %struct.file** %7, align 8
  %100 = load %struct.uio*, %struct.uio** %8, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @FOF_NOLOCK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @FOF_NEXTOFF, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @foffset_unlock_uio(%struct.file* %99, %struct.uio* %100, i32 %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %92, %34, %24
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @devfs_fp_check(%struct.file*, %struct.cdev**, %struct.cdevsw**, i32*) #1

declare dso_local i32 @foffset_lock_uio(%struct.file*, %struct.uio*, i32) #1

declare dso_local i32 @devfs_timestamp(i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @foffset_unlock_uio(%struct.file*, %struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
