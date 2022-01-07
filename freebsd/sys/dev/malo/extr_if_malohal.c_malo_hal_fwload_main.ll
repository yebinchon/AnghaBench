; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_fwload_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_fwload_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal = type { i32 }
%struct.firmware = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"could not read firmware %s!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"load %s firmware image (%zu bytes)\0A\00", align 1
@MALO_NOWAIT = common dso_local global i32 0, align 4
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malo_hal*, i8*)* @malo_hal_fwload_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_hal_fwload_main(%struct.malo_hal* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.malo_hal*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.malo_hal* %0, %struct.malo_hal** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.firmware* @firmware_get(i8* %12)
  store %struct.firmware* %13, %struct.firmware** %6, align 8
  %14 = load %struct.firmware*, %struct.firmware** %6, align 8
  %15 = icmp eq %struct.firmware* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %18 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @EIO, align 4
  store i32 %22, i32* %3, align 4
  br label %79

23:                                               ; preds = %2
  %24 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %25 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.firmware*, %struct.firmware** %6, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %27, i64 %30)
  store i32 1, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %63, %23
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.firmware*, %struct.firmware** %6, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.firmware*, %struct.firmware** %6, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %41, %42
  %44 = call i64 @MIN(i32 256, i64 %43)
  store i64 %44, i64* %11, align 8
  %45 = load %struct.firmware*, %struct.firmware** %6, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %7, align 8
  %51 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @MALO_NOWAIT, align 4
  %57 = call i32 @malo_hal_send_main(%struct.malo_hal* %51, i32* %52, i64 %53, i32 %54, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  br label %74

61:                                               ; preds = %38
  %62 = call i32 @DELAY(i32 500)
  br label %63

63:                                               ; preds = %61
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %9, align 8
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @MALO_NOWAIT, align 4
  %72 = call i32 @malo_hal_send_main(%struct.malo_hal* %68, i32* null, i64 0, i32 %69, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = call i32 @DELAY(i32 100)
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.firmware*, %struct.firmware** %6, align 8
  %76 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %77 = call i32 @firmware_put(%struct.firmware* %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @malo_hal_send_main(%struct.malo_hal*, i32*, i64, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
