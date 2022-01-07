; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_ioctl.c_smartpqi_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_ioctl.c_smartpqi_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pqisrc_softstate* }
%struct.pqisrc_softstate = type { i32 }
%struct.thread = type { i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IN cmd = 0x%lx udata = %p cdev = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"udata is null !!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Controller s offline !!\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"!IOCTL cmd 0x%lx not supported\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"OUT error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)* @smartpqi_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smartpqi_ioctl(%struct.cdev* %0, i32 %1, i32 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pqisrc_softstate*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.cdev*, %struct.cdev** %7, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %16, align 8
  store %struct.pqisrc_softstate* %17, %struct.pqisrc_softstate** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.cdev*, %struct.cdev** %7, align 8
  %21 = call i32 (i8*, i32, ...) @DBG_FUNC(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, %struct.cdev* %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = call i32 @DBG_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %5
  %27 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %13, align 8
  %28 = call i64 @pqisrc_ctrl_offline(%struct.pqisrc_softstate* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i32 @DBG_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ENOTTY, align 4
  store i32 %32, i32* %6, align 4
  br label %59

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %51 [
    i32 132, label %35
    i32 131, label %39
    i32 128, label %43
    i32 130, label %43
    i32 129, label %48
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.cdev*, %struct.cdev** %7, align 8
  %38 = call i32 @smartpqi_get_driver_info_ioctl(i32 %36, %struct.cdev* %37)
  br label %55

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.cdev*, %struct.cdev** %7, align 8
  %42 = call i32 @smartpqi_get_pci_info_ioctl(i32 %40, %struct.cdev* %41)
  br label %55

43:                                               ; preds = %33, %33
  %44 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %13, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pqisrc_passthru_ioctl(%struct.pqisrc_softstate* %44, i32 %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %47, i32* %12, align 4
  br label %55

48:                                               ; preds = %33
  %49 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %13, align 8
  %50 = call i32 @pqisrc_scan_devices(%struct.pqisrc_softstate* %49)
  store i32 %50, i32* %12, align 4
  br label %55

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @DBG_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENOTTY, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %51, %48, %43, %39, %35
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i8*, i32, ...) @DBG_FUNC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %30
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @DBG_FUNC(i8*, i32, ...) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i64 @pqisrc_ctrl_offline(%struct.pqisrc_softstate*) #1

declare dso_local i32 @smartpqi_get_driver_info_ioctl(i32, %struct.cdev*) #1

declare dso_local i32 @smartpqi_get_pci_info_ioctl(i32, %struct.cdev*) #1

declare dso_local i32 @pqisrc_passthru_ioctl(%struct.pqisrc_softstate*, i32, i32) #1

declare dso_local i32 @pqisrc_scan_devices(%struct.pqisrc_softstate*) #1

declare dso_local i32 @DBG_WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
