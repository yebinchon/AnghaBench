; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Device open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @twa_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @twa_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twa_softc*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.twa_softc* @device_get_softc(i32 %5)
  store %struct.twa_softc* %6, %struct.twa_softc** %3, align 8
  %7 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %8 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @EBUSY, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %11 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %16 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %17 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @tw_osli_printf(%struct.twa_softc* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17, i32 8212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @twa_shutdown(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %28

25:                                               ; preds = %20
  %26 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %27 = call i32 @tw_osli_free_resources(%struct.twa_softc* %26)
  store i64 0, i64* %4, align 8
  br label %28

28:                                               ; preds = %25, %24, %14
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local %struct.twa_softc* @device_get_softc(i32) #1

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, i64) #1

declare dso_local i64 @twa_shutdown(i32) #1

declare dso_local i32 @tw_osli_free_resources(%struct.twa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
