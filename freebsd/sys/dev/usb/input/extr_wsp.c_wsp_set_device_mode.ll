; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_set_device_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_set_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wsp_softc = type { i32, %struct.wsp_dev_params* }
%struct.wsp_dev_params = type { i64, i64, i32, i32, i32, i32, i64, i64 }

@TYPE3 = common dso_local global i64 0, align 8
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to read device mode (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"WHW\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wsp_softc*, i64)* @wsp_set_device_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wsp_set_device_mode(%struct.wsp_softc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.wsp_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wsp_dev_params*, align 8
  %7 = alloca [8 x i64], align 16
  %8 = alloca i64, align 8
  store %struct.wsp_softc* %0, %struct.wsp_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %10 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %9, i32 0, i32 1
  %11 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %10, align 8
  store %struct.wsp_dev_params* %11, %struct.wsp_dev_params** %6, align 8
  %12 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %13 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TYPE3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %20 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %23 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %24 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %27 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %30 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %33 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @usbd_req_get_report(i32 %21, i32* null, i64* %22, i32 %25, i32 %28, i32 %31, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %18
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %3, align 8
  br label %80

43:                                               ; preds = %18
  %44 = load i32, i32* @hz, align 4
  %45 = sdiv i32 %44, 4
  %46 = call i32 @pause(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %51 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %55 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i64 [ %52, %49 ], [ %56, %53 ]
  %59 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %60 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %61
  store i64 %58, i64* %62, align 8
  %63 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %64 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %67 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %68 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %71 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %74 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wsp_dev_params*, %struct.wsp_dev_params** %6, align 8
  %77 = getelementptr inbounds %struct.wsp_dev_params, %struct.wsp_dev_params* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @usbd_req_set_report(i32 %65, i32* null, i64* %66, i32 %69, i32 %72, i32 %75, i32 %78)
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %57, %39, %17
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i64 @usbd_req_get_report(i32, i32*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @usbd_req_set_report(i32, i32*, i64*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
