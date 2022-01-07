; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_mc_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_mc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32, i32, i32, i32, %struct.fxp_cb_mcs* }
%struct.fxp_cb_mcs = type { i32, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@FXP_CB_COMMAND_MCAS = common dso_local global i32 0, align 4
@FXP_CB_COMMAND_EL = common dso_local global i32 0, align 4
@FXP_CSR_SCB_RUSCUS = common dso_local global i32 0, align 4
@FXP_SCB_CUS_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"command queue timeout\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@FXP_CSR_SCB_GENERAL = common dso_local global i32 0, align 4
@FXP_SCB_COMMAND_CU_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_mc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_mc_setup(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca %struct.fxp_cb_mcs*, align 8
  %4 = alloca i32, align 4
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  %5 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @FXP_LOCK_ASSERT(%struct.fxp_softc* %5, i32 %6)
  %8 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %9 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %8, i32 0, i32 4
  %10 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %9, align 8
  store %struct.fxp_cb_mcs* %10, %struct.fxp_cb_mcs** %3, align 8
  %11 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %12 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @FXP_CB_COMMAND_MCAS, align 4
  %14 = load i32, i32* @FXP_CB_COMMAND_EL, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @htole16(i32 %15)
  %17 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %18 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %20 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %22 = call i32 @fxp_mc_addrs(%struct.fxp_softc* %21)
  store i32 100, i32* %4, align 4
  br label %23

23:                                               ; preds = %36, %1
  %24 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %25 = load i32, i32* @FXP_CSR_SCB_RUSCUS, align 4
  %26 = call i32 @CSR_READ_1(%struct.fxp_softc* %24, i32 %25)
  %27 = ashr i32 %26, 6
  %28 = load i32, i32* @FXP_SCB_CUS_IDLE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi i1 [ false, %23 ], [ %33, %30 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @DELAY(i32 10)
  br label %23

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %43 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %78

46:                                               ; preds = %38
  %47 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %48 = call i32 @fxp_scb_wait(%struct.fxp_softc* %47)
  %49 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %50 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %53 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %56 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @bus_dmamap_sync(i32 %51, i32 %54, i32 %57)
  %59 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %60 = load i32, i32* @FXP_CSR_SCB_GENERAL, align 4
  %61 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %62 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @CSR_WRITE_4(%struct.fxp_softc* %59, i32 %60, i32 %63)
  %65 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %66 = load i32, i32* @FXP_SCB_COMMAND_CU_START, align 4
  %67 = call i32 @fxp_scb_cmd(%struct.fxp_softc* %65, i32 %66)
  %68 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %69 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %70 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %69, i32 0, i32 1
  %71 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %72 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %75 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @fxp_dma_wait(%struct.fxp_softc* %68, i64* %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @FXP_LOCK_ASSERT(%struct.fxp_softc*, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @fxp_mc_addrs(%struct.fxp_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.fxp_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @fxp_scb_wait(%struct.fxp_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @fxp_scb_cmd(%struct.fxp_softc*, i32) #1

declare dso_local i32 @fxp_dma_wait(%struct.fxp_softc*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
