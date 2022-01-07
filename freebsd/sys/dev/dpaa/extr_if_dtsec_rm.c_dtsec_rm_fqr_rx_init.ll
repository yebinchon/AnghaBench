; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fqr_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fqr_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, i32, i32* }

@DTSEC_RM_FQR_RX_CHANNEL = common dso_local global i32 0, align 4
@DTSEC_RM_FQR_RX_WQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not create default RX queue\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@dtsec_rm_fqr_rx_callback = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"could not register RX callback\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_rm_fqr_rx_init(%struct.dtsec_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtsec_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %3, align 8
  %6 = load i32, i32* @DTSEC_RM_FQR_RX_CHANNEL, align 4
  %7 = load i32, i32* @DTSEC_RM_FQR_RX_WQ, align 4
  %8 = call i32* @qman_fqr_create(i32 1, i32 %6, i32 %7, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %13 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %20 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @qman_fqr_get_base_fqid(i32* %21)
  %23 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %24 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @dtsec_rm_fqr_rx_callback, align 4
  %27 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %28 = call i64 @qman_fqr_register_cb(i32* %25, i32 %26, %struct.dtsec_softc* %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @E_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %17
  %33 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %34 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %38 = call i32 @dtsec_rm_fqr_rx_free(%struct.dtsec_softc* %37)
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %32, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32* @qman_fqr_create(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @qman_fqr_get_base_fqid(i32*) #1

declare dso_local i64 @qman_fqr_register_cb(i32*, i32, %struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_fqr_rx_free(%struct.dtsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
