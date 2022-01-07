; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fqr_tx_confirm_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_fqr_tx_confirm_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i64, i32, i32 }
%struct.dtsec_rm_frame_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"TX error: 0x%08X\0A\00", align 1
@e_QM_FQR_COUNTERS_FRAME = common dso_local global i32 0, align 4
@e_RX_STORE_RESPONSE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtsec_softc*, %struct.dtsec_softc*, %struct.dtsec_softc*, i32, i32*)* @dtsec_rm_fqr_tx_confirm_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtsec_rm_fqr_tx_confirm_callback(%struct.dtsec_softc* %0, %struct.dtsec_softc* %1, %struct.dtsec_softc* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.dtsec_softc*, align 8
  %7 = alloca %struct.dtsec_softc*, align 8
  %8 = alloca %struct.dtsec_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dtsec_rm_frame_info*, align 8
  %12 = alloca %struct.dtsec_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %6, align 8
  store %struct.dtsec_softc* %1, %struct.dtsec_softc** %7, align 8
  store %struct.dtsec_softc* %2, %struct.dtsec_softc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load %struct.dtsec_softc*, %struct.dtsec_softc** %6, align 8
  store %struct.dtsec_softc* %15, %struct.dtsec_softc** %12, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i64 @DPAA_FD_GET_STATUS(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.dtsec_softc*, %struct.dtsec_softc** %12, align 8
  %21 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @DPAA_FD_GET_STATUS(i32* %23)
  %25 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %19, %5
  %27 = load i32*, i32** %10, align 8
  %28 = call i32* @DPAA_FD_GET_ADDR(i32* %27)
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call %struct.dtsec_rm_frame_info* @DPAA_SGTE_GET_ADDR(i32* %29)
  store %struct.dtsec_rm_frame_info* %30, %struct.dtsec_rm_frame_info** %11, align 8
  %31 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %11, align 8
  %32 = getelementptr inbounds %struct.dtsec_rm_frame_info, %struct.dtsec_rm_frame_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @m_freem(i32 %33)
  %35 = load %struct.dtsec_softc*, %struct.dtsec_softc** %12, align 8
  %36 = load %struct.dtsec_rm_frame_info*, %struct.dtsec_rm_frame_info** %11, align 8
  %37 = call i32 @dtsec_rm_fi_free(%struct.dtsec_softc* %35, %struct.dtsec_rm_frame_info* %36)
  %38 = load %struct.dtsec_softc*, %struct.dtsec_softc** %12, align 8
  %39 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @e_QM_FQR_COUNTERS_FRAME, align 4
  %42 = call i32 @qman_fqr_get_counter(i32 %40, i32 0, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %26
  %46 = load %struct.dtsec_softc*, %struct.dtsec_softc** %12, align 8
  %47 = call i32 @DTSEC_LOCK(%struct.dtsec_softc* %46)
  %48 = load %struct.dtsec_softc*, %struct.dtsec_softc** %12, align 8
  %49 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.dtsec_softc*, %struct.dtsec_softc** %12, align 8
  %54 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.dtsec_softc*, %struct.dtsec_softc** %12, align 8
  %56 = call i32 @dtsec_rm_if_start_locked(%struct.dtsec_softc* %55)
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.dtsec_softc*, %struct.dtsec_softc** %12, align 8
  %59 = call i32 @DTSEC_UNLOCK(%struct.dtsec_softc* %58)
  br label %60

60:                                               ; preds = %57, %26
  %61 = load i32, i32* @e_RX_STORE_RESPONSE_CONTINUE, align 4
  ret i32 %61
}

declare dso_local i64 @DPAA_FD_GET_STATUS(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32* @DPAA_FD_GET_ADDR(i32*) #1

declare dso_local %struct.dtsec_rm_frame_info* @DPAA_SGTE_GET_ADDR(i32*) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @dtsec_rm_fi_free(%struct.dtsec_softc*, %struct.dtsec_rm_frame_info*) #1

declare dso_local i32 @qman_fqr_get_counter(i32, i32, i32) #1

declare dso_local i32 @DTSEC_LOCK(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_rm_if_start_locked(%struct.dtsec_softc*) #1

declare dso_local i32 @DTSEC_UNLOCK(%struct.dtsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
