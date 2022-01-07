; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_validate_hw_lro_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_validate_hw_lro_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }

@HWRM_VNIC_TPA_CFG_INPUT_MAX_AGG_SEGS_MAX = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX = common dso_local global i32 0, align 4
@BNXT_MAX_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_validate_hw_lro_settings(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %3 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %4 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @min(i8* %6, i32 1)
  %8 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i8* %7, i8** %10, align 8
  %11 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @min(i8* %14, i32 1)
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i8* %15, i8** %18, align 8
  %19 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_MAX_AGG_SEGS_MAX, align 4
  %24 = call i8* @min(i8* %22, i32 %23)
  %25 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %26 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_MAX_AGGS_MAX, align 4
  %33 = call i8* @min(i8* %31, i32 %32)
  %34 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @BNXT_MAX_MTU, align 4
  %42 = call i8* @min(i8* %40, i32 %41)
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  ret void
}

declare dso_local i8* @min(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
