; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_set_tx_stfwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_set_tx_stfwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, %struct.msk_softc*, %struct.ifnet* }
%struct.msk_softc = type { i64, i64 }
%struct.ifnet = type { i64 }

@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@CHIP_REV_YU_EX_A0 = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_SUPR = common dso_local global i64 0, align 8
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@TX_STFW_ENA = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@TX_GMF_AE_THR = common dso_local global i32 0, align 4
@MSK_ECU_JUMBO_WM = common dso_local global i32 0, align 4
@MSK_ECU_AE_THR = common dso_local global i32 0, align 4
@TX_STFW_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_set_tx_stfwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_set_tx_stfwd(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %5 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %6 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %5, i32 0, i32 2
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %4, align 8
  %8 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %9 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %8, i32 0, i32 1
  %10 = load %struct.msk_softc*, %struct.msk_softc** %9, align 8
  store %struct.msk_softc* %10, %struct.msk_softc** %3, align 8
  %11 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %12 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %18 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHIP_REV_YU_EX_A0, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %24 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22, %16
  %29 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %30 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %31 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %34 = call i32 @MR_ADDR(i32 %32, i32 %33)
  %35 = load i32, i32* @TX_STFW_ENA, align 4
  %36 = call i32 @CSR_WRITE_4(%struct.msk_softc* %29, i32 %34, i32 %35)
  br label %73

37:                                               ; preds = %22
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ETHERMTU, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %45 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %46 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TX_GMF_AE_THR, align 4
  %49 = call i32 @MR_ADDR(i32 %47, i32 %48)
  %50 = load i32, i32* @MSK_ECU_JUMBO_WM, align 4
  %51 = shl i32 %50, 16
  %52 = load i32, i32* @MSK_ECU_AE_THR, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @CSR_WRITE_4(%struct.msk_softc* %44, i32 %49, i32 %53)
  %55 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %56 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %57 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %60 = call i32 @MR_ADDR(i32 %58, i32 %59)
  %61 = load i32, i32* @TX_STFW_DIS, align 4
  %62 = call i32 @CSR_WRITE_4(%struct.msk_softc* %55, i32 %60, i32 %61)
  br label %72

63:                                               ; preds = %37
  %64 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %65 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %66 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %69 = call i32 @MR_ADDR(i32 %67, i32 %68)
  %70 = load i32, i32* @TX_STFW_ENA, align 4
  %71 = call i32 @CSR_WRITE_4(%struct.msk_softc* %64, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %43
  br label %73

73:                                               ; preds = %72, %28
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @MR_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
