; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.twa_softc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ioctl: fw_passthru\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ioctl: scan bus\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ioctl: 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @twa_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.twa_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.twa_softc*
  store %struct.twa_softc* %16, %struct.twa_softc** %11, align 8
  %17 = load %struct.twa_softc*, %struct.twa_softc** %11, align 8
  %18 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 5, %struct.twa_softc* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %32 [
    i32 129, label %20
    i32 128, label %27
  ]

20:                                               ; preds = %5
  %21 = load %struct.twa_softc*, %struct.twa_softc** %11, align 8
  %22 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 6, %struct.twa_softc* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.twa_softc*, %struct.twa_softc** %11, align 8
  %24 = load i64, i64* %8, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @tw_osli_fw_passthru(%struct.twa_softc* %23, i32* %25)
  store i32 %26, i32* %12, align 4
  br label %41

27:                                               ; preds = %5
  %28 = load %struct.twa_softc*, %struct.twa_softc** %11, align 8
  %29 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 6, %struct.twa_softc* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.twa_softc*, %struct.twa_softc** %11, align 8
  %31 = call i32 @tw_osli_request_bus_scan(%struct.twa_softc* %30)
  store i32 %31, i32* %12, align 4
  br label %41

32:                                               ; preds = %5
  %33 = load %struct.twa_softc*, %struct.twa_softc** %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 6, %struct.twa_softc* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.twa_softc*, %struct.twa_softc** %11, align 8
  %37 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @tw_cl_ioctl(i32* %37, i32 %38, i64 %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %32, %27, %20
  %42 = load i32, i32* %12, align 4
  ret i32 %42
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*, ...) #1

declare dso_local i32 @tw_osli_fw_passthru(%struct.twa_softc*, i32*) #1

declare dso_local i32 @tw_osli_request_bus_scan(%struct.twa_softc*) #1

declare dso_local i32 @tw_cl_ioctl(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
