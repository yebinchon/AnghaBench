; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_get_phy_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_get_phy_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i64, i32, i64 }

@HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@HWRM_PORT_PHY_QCFG_OUTPUT_MEDIA_TYPE_TP = common dso_local global i64 0, align 8
@HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASET = common dso_local global i64 0, align 8
@HWRM_PORT_PHY_QCFG_OUTPUT_MEDIA_TYPE_DAC = common dso_local global i64 0, align 8
@HWRM_PORT_PHY_QCFG_OUTPUT_SUPPORT_SPEEDS_2_5GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASEKX = common dso_local global i64 0, align 8
@HWRM_PORT_PHY_QCFG_OUTPUT_SUPPORT_SPEEDS_20GB = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASEKR = common dso_local global i64 0, align 8
@HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASECR = common dso_local global i64 0, align 8
@HWRM_PORT_PHY_QCFG_OUTPUT_MEDIA_TYPE_FIBRE = common dso_local global i64 0, align 8
@HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASESR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnxt_softc*)* @get_phy_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_phy_type(%struct.bnxt_softc* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.bnxt_link_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  %7 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %7, i32 0, i32 0
  store %struct.bnxt_link_info* %8, %struct.bnxt_link_info** %4, align 8
  %9 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_UNKNOWN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %19 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_MEDIA_TYPE_TP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASET, align 8
  store i64 %27, i64* %2, align 8
  br label %60

28:                                               ; preds = %17
  %29 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %30 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_MEDIA_TYPE_DAC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @HWRM_PORT_PHY_QCFG_OUTPUT_SUPPORT_SPEEDS_2_5GB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASEKX, align 8
  store i64 %40, i64* %2, align 8
  br label %60

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HWRM_PORT_PHY_QCFG_OUTPUT_SUPPORT_SPEEDS_20GB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASEKR, align 8
  store i64 %47, i64* %2, align 8
  br label %60

48:                                               ; preds = %41
  %49 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASECR, align 8
  store i64 %49, i64* %2, align 8
  br label %60

50:                                               ; preds = %28
  %51 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %52 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_MEDIA_TYPE_FIBRE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_PHY_TYPE_BASESR, align 8
  store i64 %57, i64* %2, align 8
  br label %60

58:                                               ; preds = %50
  %59 = load i64, i64* %5, align 8
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %58, %56, %48, %46, %39, %26, %15
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
