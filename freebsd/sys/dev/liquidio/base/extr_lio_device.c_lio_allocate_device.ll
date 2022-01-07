; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_allocate_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i32, i32, i32 }

@octeon_devices_lock = common dso_local global i32 0, align 4
@LIO_MAX_DEVICES = common dso_local global i64 0, align 8
@octeon_device = common dso_local global %struct.octeon_device** null, align 8
@octeon_device_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pci_win_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"mem_access_lock\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@LIO_DRV_NAME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.octeon_device* @lio_allocate_device(i32 %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.octeon_device* null, %struct.octeon_device** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = call i32 @mtx_lock(i32* @octeon_devices_lock)
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @LIO_MAX_DEVICES, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.octeon_device**, %struct.octeon_device*** @octeon_device, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.octeon_device*, %struct.octeon_device** %12, i64 %13
  %15 = load %struct.octeon_device*, %struct.octeon_device** %14, align 8
  %16 = icmp ne %struct.octeon_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %22

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %7

22:                                               ; preds = %17, %7
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @LIO_MAX_DEVICES, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.octeon_device* @lio_allocate_device_mem(i32 %27)
  store %struct.octeon_device* %28, %struct.octeon_device** %4, align 8
  %29 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %30 = icmp ne %struct.octeon_device* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @octeon_device_count, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @octeon_device_count, align 4
  %34 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %35 = load %struct.octeon_device**, %struct.octeon_device*** @octeon_device, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.octeon_device*, %struct.octeon_device** %35, i64 %36
  store %struct.octeon_device* %34, %struct.octeon_device** %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  br label %39

39:                                               ; preds = %38, %22
  %40 = call i32 @mtx_unlock(i32* @octeon_devices_lock)
  %41 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %42 = icmp eq %struct.octeon_device* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.octeon_device* null, %struct.octeon_device** %2, align 8
  br label %65

44:                                               ; preds = %39
  %45 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 3
  %47 = load i32, i32* @MTX_DEF, align 4
  %48 = call i32 @mtx_init(i32* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %47)
  %49 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %50 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %49, i32 0, i32 2
  %51 = load i32, i32* @MTX_DEF, align 4
  %52 = call i32 @mtx_init(i32* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %57 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** @LIO_DRV_NAME, align 8
  %60 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @snprintf(i32 %58, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %59, i64 %62)
  %64 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  store %struct.octeon_device* %64, %struct.octeon_device** %2, align 8
  br label %65

65:                                               ; preds = %44, %43
  %66 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  ret %struct.octeon_device* %66
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.octeon_device* @lio_allocate_device_mem(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
