; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_fwload_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_fwload_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal = type { i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"could not read microcode %s!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"load %s firmware image (%zu bytes)\0A\00", align 1
@MALO_WAITOK = common dso_local global i32 0, align 4
@MALO_NOWAIT = common dso_local global i32 0, align 4
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malo_hal*, i8*)* @malo_hal_fwload_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_hal_fwload_helper(%struct.malo_hal* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.malo_hal*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  store %struct.malo_hal* %0, %struct.malo_hal** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.firmware* @firmware_get(i8* %8)
  store %struct.firmware* %9, %struct.firmware** %6, align 8
  %10 = load %struct.firmware*, %struct.firmware** %6, align 8
  %11 = icmp eq %struct.firmware* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %14 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EIO, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %21 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.firmware*, %struct.firmware** %6, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %26)
  %28 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %29 = load %struct.firmware*, %struct.firmware** %6, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.firmware*, %struct.firmware** %6, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.firmware*, %struct.firmware** %6, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MALO_WAITOK, align 4
  %39 = call i32 @malo_hal_send_helper(%struct.malo_hal* %28, i32 %31, i32* %34, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %19
  br label %47

43:                                               ; preds = %19
  %44 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %45 = load i32, i32* @MALO_NOWAIT, align 4
  %46 = call i32 @malo_hal_send_helper(%struct.malo_hal* %44, i32 0, i32* null, i32 0, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = load %struct.firmware*, %struct.firmware** %6, align 8
  %49 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %50 = call i32 @firmware_put(%struct.firmware* %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @malo_hal_send_helper(%struct.malo_hal*, i32, i32*, i32, i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
