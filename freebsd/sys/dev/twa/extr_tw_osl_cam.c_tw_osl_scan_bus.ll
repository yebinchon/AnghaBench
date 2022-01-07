; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osl_scan_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osl_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_ctlr_handle = type { %struct.twa_softc* }
%struct.twa_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Bus scan request to CAM failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osl_scan_bus(%struct.tw_cl_ctlr_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %4 = alloca %struct.twa_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %3, align 8
  %6 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %3, align 8
  %7 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %6, i32 0, i32 0
  %8 = load %struct.twa_softc*, %struct.twa_softc** %7, align 8
  store %struct.twa_softc* %8, %struct.twa_softc** %4, align 8
  %9 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %10 = call i32 @tw_osli_request_bus_scan(%struct.twa_softc* %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %14 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %15 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @tw_osli_printf(%struct.twa_softc* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 8457, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @tw_osli_request_bus_scan(%struct.twa_softc*) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
