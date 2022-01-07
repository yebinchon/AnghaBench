; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fqr_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fqr_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, i32, i32*, i32*, i32 }

@DTSEC_RM_FQR_TX_WQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not create default TX queue\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DTSEC_RM_FQR_TX_CONF_CHANNEL = common dso_local global i32 0, align 4
@DTSEC_RM_FQR_TX_CONF_WQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not create TX confirmation queue\0A\00", align 1
@dtsec_rm_fqr_tx_confirm_callback = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"could not register TX confirmation callback\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_rm_fqr_tx_init(%struct.dtsec_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtsec_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %3, align 8
  %6 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %7 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DTSEC_RM_FQR_TX_WQ, align 4
  %10 = call i32* @qman_fqr_create(i32 1, i32 %8, i32 %9, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %22 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @DTSEC_RM_FQR_TX_CONF_CHANNEL, align 4
  %24 = load i32, i32* @DTSEC_RM_FQR_TX_CONF_WQ, align 4
  %25 = call i32* @qman_fqr_create(i32 1, i32 %23, i32 %24, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %30 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %34 = call i32 @dtsec_rm_fqr_tx_free(%struct.dtsec_softc* %33)
  %35 = load i32, i32* @EIO, align 4
  store i32 %35, i32* %2, align 4
  br label %60

36:                                               ; preds = %19
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %39 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @qman_fqr_get_base_fqid(i32* %40)
  %42 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %43 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @dtsec_rm_fqr_tx_confirm_callback, align 4
  %46 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %47 = call i64 @qman_fqr_register_cb(i32* %44, i32 %45, %struct.dtsec_softc* %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @E_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %53 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %57 = call i32 @dtsec_rm_fqr_tx_free(%struct.dtsec_softc* %56)
  %58 = load i32, i32* @EIO, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %51, %28, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32* @qman_fqr_create(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @dtsec_rm_fqr_tx_free(%struct.dtsec_softc*) #1

declare dso_local i32 @qman_fqr_get_base_fqid(i32*) #1

declare dso_local i64 @qman_fqr_register_cb(i32*, i32, %struct.dtsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
