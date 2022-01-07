; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_configure_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_configure_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s.independent_mode\00", align 1
@DTSEC_MODE_REGULAR = common dso_local global i32 0, align 4
@dtsec_rm_fm_port_rx_init = common dso_local global i32 0, align 4
@dtsec_rm_fm_port_tx_init = common dso_local global i32 0, align 4
@dtsec_rm_if_start_locked = common dso_local global i32 0, align 4
@dtsec_im_fm_port_rx_init = common dso_local global i32 0, align 4
@dtsec_im_fm_port_tx_init = common dso_local global i32 0, align 4
@dtsec_im_if_start_locked = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Configured for %s mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"regular\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"independent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dtsec_softc*)* @dtsec_configure_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtsec_configure_mode(%struct.dtsec_softc* %0) #0 {
  %2 = alloca %struct.dtsec_softc*, align 8
  %3 = alloca [64 x i8], align 16
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %2, align 8
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %5 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %6 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @device_get_nameunit(i32 %7)
  %9 = call i32 @snprintf(i8* %4, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @DTSEC_MODE_REGULAR, align 4
  %11 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %14 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %15 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %14, i32 0, i32 0
  %16 = call i32 @TUNABLE_INT_FETCH(i8* %13, i32* %15)
  %17 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %18 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DTSEC_MODE_REGULAR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @dtsec_rm_fm_port_rx_init, align 4
  %24 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %25 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @dtsec_rm_fm_port_tx_init, align 4
  %27 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %28 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @dtsec_rm_if_start_locked, align 4
  %30 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %31 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  br label %42

32:                                               ; preds = %1
  %33 = load i32, i32* @dtsec_im_fm_port_rx_init, align 4
  %34 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %35 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @dtsec_im_fm_port_tx_init, align 4
  %37 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %38 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @dtsec_im_if_start_locked, align 4
  %40 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %41 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %22
  %43 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %44 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %47 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DTSEC_MODE_REGULAR, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %53 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
