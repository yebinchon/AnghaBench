; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_write_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_write_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* }
%struct.file = type { i32 }
%struct.uio = type { i64, %struct.thread* }
%struct.ucred = type { i32 }
%struct.thread = type { %struct.file* }
%struct.cdev = type { i32, i32 }
%struct.cdevsw = type { i32 (%struct.cdev.0*, %struct.uio*, i32)* }
%struct.cdev.0 = type opaque

@DEVFS_IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@vnops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"uio_td %p is not td %p\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@IO_DIRECT = common dso_local global i32 0, align 4
@FOF_NOLOCK = common dso_local global i32 0, align 4
@FOF_NEXTOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @devfs_write_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_write_f(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
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
  br label %127

26:                                               ; preds = %5
  %27 = load %struct.thread*, %struct.thread** %11, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.file*, %struct.file** %28, align 8
  store %struct.file* %29, %struct.file** %18, align 8
  %30 = load %struct.file*, %struct.file** %7, align 8
  %31 = call i32 @devfs_fp_check(%struct.file* %30, %struct.cdev** %12, %struct.cdevsw** %17, i32* %15)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
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
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %127

43:                                               ; preds = %26
  %44 = load %struct.uio*, %struct.uio** %8, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 1
  %46 = load %struct.thread*, %struct.thread** %45, align 8
  %47 = load %struct.thread*, %struct.thread** %11, align 8
  %48 = icmp eq %struct.thread* %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.uio*, %struct.uio** %8, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 1
  %52 = load %struct.thread*, %struct.thread** %51, align 8
  %53 = load %struct.thread*, %struct.thread** %11, align 8
  %54 = bitcast %struct.thread* %53 to i8*
  %55 = call i32 @KASSERT(i32 %49, i8* %54)
  %56 = load %struct.file*, %struct.file** %7, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @O_NONBLOCK, align 4
  %60 = load i32, i32* @O_DIRECT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @O_FSYNC, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %58, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @O_DIRECT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %43
  %70 = load i32, i32* @IO_DIRECT, align 4
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %69, %43
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = load %struct.uio*, %struct.uio** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @FOF_NOLOCK, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @foffset_lock_uio(%struct.file* %74, %struct.uio* %75, i32 %78)
  %80 = load %struct.uio*, %struct.uio** %8, align 8
  %81 = getelementptr inbounds %struct.uio, %struct.uio* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %16, align 8
  %83 = load %struct.cdevsw*, %struct.cdevsw** %17, align 8
  %84 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %83, i32 0, i32 0
  %85 = load i32 (%struct.cdev.0*, %struct.uio*, i32)*, i32 (%struct.cdev.0*, %struct.uio*, i32)** %84, align 8
  %86 = load %struct.cdev*, %struct.cdev** %12, align 8
  %87 = bitcast %struct.cdev* %86 to %struct.cdev.0*
  %88 = load %struct.uio*, %struct.uio** %8, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 %85(%struct.cdev.0* %87, %struct.uio* %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.uio*, %struct.uio** %8, align 8
  %92 = getelementptr inbounds %struct.uio, %struct.uio* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %16, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %73
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load i64, i64* %16, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99, %73
  %103 = load %struct.cdev*, %struct.cdev** %12, align 8
  %104 = getelementptr inbounds %struct.cdev, %struct.cdev* %103, i32 0, i32 0
  %105 = call i32 @devfs_timestamp(i32* %104)
  %106 = load %struct.cdev*, %struct.cdev** %12, align 8
  %107 = getelementptr inbounds %struct.cdev, %struct.cdev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cdev*, %struct.cdev** %12, align 8
  %110 = getelementptr inbounds %struct.cdev, %struct.cdev* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %102, %99, %96
  %112 = load %struct.file*, %struct.file** %18, align 8
  %113 = load %struct.thread*, %struct.thread** %11, align 8
  %114 = getelementptr inbounds %struct.thread, %struct.thread* %113, i32 0, i32 0
  store %struct.file* %112, %struct.file** %114, align 8
  %115 = load %struct.cdev*, %struct.cdev** %12, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @dev_relthread(%struct.cdev* %115, i32 %116)
  %118 = load %struct.file*, %struct.file** %7, align 8
  %119 = load %struct.uio*, %struct.uio** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @FOF_NOLOCK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @FOF_NEXTOFF, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @foffset_unlock_uio(%struct.file* %118, %struct.uio* %119, i32 %124)
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %111, %34, %24
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @devfs_fp_check(%struct.file*, %struct.cdev**, %struct.cdevsw**, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

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
