; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to shutdown Common Layer/controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twa_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twa_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.twa_softc* @device_get_softc(i32 %5)
  store %struct.twa_softc* %6, %struct.twa_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %8 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %10 = call i32 @twa_teardown_intr(%struct.twa_softc* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %12 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @callout_drain(i32* %14)
  %16 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %17 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = call i32 @callout_drain(i32* %19)
  %21 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %22 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %21, i32 0, i32 0
  %23 = call i32 @tw_cl_shutdown_ctlr(i32* %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %27 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %28 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @tw_osli_printf(%struct.twa_softc* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i32 8213, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.twa_softc* @device_get_softc(i32) #1

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local i32 @twa_teardown_intr(%struct.twa_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @tw_cl_shutdown_ctlr(i32*, i32) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
