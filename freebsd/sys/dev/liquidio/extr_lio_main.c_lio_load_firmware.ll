; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_load_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.firmware = type { i32, i32 }
%struct.TYPE_2__ = type { i8* }

@LIO_MAX_FW_FILENAME_LEN = common dso_local global i32 0, align 4
@fw_type = common dso_local global i8* null, align 8
@LIO_FW_NAME_TYPE_NIC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s%s_%s%s\00", align 1
@LIO_FW_BASE_NAME = common dso_local global i8* null, align 8
@LIO_FW_NAME_SUFFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Request firmware failed. Could not find file %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_load_firmware(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @LIO_MAX_FW_FILENAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** @fw_type, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i8*, i8** @LIO_FW_NAME_TYPE_NIC, align 8
  store i8* %20, i8** %5, align 8
  br label %23

21:                                               ; preds = %1
  %22 = load i8*, i8** @fw_type, align 8
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i8*, i8** @LIO_FW_BASE_NAME, align 8
  %25 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %26 = call %struct.TYPE_2__* @lio_get_conf(%struct.octeon_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @LIO_FW_NAME_SUFFIX, align 4
  %31 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %28, i8* %29, i32 %30)
  %32 = call %struct.firmware* @firmware_get(i8* %13)
  store %struct.firmware* %32, %struct.firmware** %4, align 8
  %33 = load %struct.firmware*, %struct.firmware** %4, align 8
  %34 = icmp eq %struct.firmware* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %37 = call i32 @lio_dev_err(%struct.octeon_device* %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %52

39:                                               ; preds = %23
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = load %struct.firmware*, %struct.firmware** %4, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.firmware*, %struct.firmware** %4, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lio_download_firmware(%struct.octeon_device* %40, i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.firmware*, %struct.firmware** %4, align 8
  %49 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %50 = call i32 @firmware_put(%struct.firmware* %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %39, %35
  %53 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_2__* @lio_get_conf(%struct.octeon_device*) #2

declare dso_local %struct.firmware* @firmware_get(i8*) #2

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i8*) #2

declare dso_local i32 @lio_download_firmware(%struct.octeon_device*, i32, i32) #2

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
