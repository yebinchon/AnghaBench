; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_dcb_config_qm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_dcb_config_qm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.priority_cos = type { i32 }

@ECORE_FCOE_Q = common dso_local global i32 0, align 4
@LLFC_TRAFFIC_TYPE_FCOE = common dso_local global i64 0, align 8
@ECORE_ISCSI_Q = common dso_local global i32 0, align 4
@LLFC_TRAFFIC_TYPE_ISCSI = common dso_local global i64 0, align 8
@ECORE_ISCSI_ACK_Q = common dso_local global i32 0, align 4
@STATIC_COS = common dso_local global i32 0, align 4
@ECORE_ETH_Q = common dso_local global i32 0, align 4
@LLFC_TRAFFIC_TYPE_NW = common dso_local global i64 0, align 8
@ECORE_TOE_Q = common dso_local global i32 0, align 4
@ECORE_TOE_ACK_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, %struct.priority_cos*)* @ecore_dcb_config_qm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcb_config_qm(%struct.bxe_softc* %0, i32 %1, %struct.priority_cos* %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.priority_cos*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.priority_cos* %2, %struct.priority_cos** %6, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %8 = load i32, i32* @ECORE_FCOE_Q, align 4
  %9 = load %struct.priority_cos*, %struct.priority_cos** %6, align 8
  %10 = load i64, i64* @LLFC_TRAFFIC_TYPE_FCOE, align 8
  %11 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %9, i64 %10
  %12 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ecore_map_q_cos(%struct.bxe_softc* %7, i32 %8, i32 %13)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %16 = load i32, i32* @ECORE_ISCSI_Q, align 4
  %17 = load %struct.priority_cos*, %struct.priority_cos** %6, align 8
  %18 = load i64, i64* @LLFC_TRAFFIC_TYPE_ISCSI, align 8
  %19 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %17, i64 %18
  %20 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ecore_map_q_cos(%struct.bxe_softc* %15, i32 %16, i32 %21)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %24 = load i32, i32* @ECORE_ISCSI_ACK_Q, align 4
  %25 = load %struct.priority_cos*, %struct.priority_cos** %6, align 8
  %26 = load i64, i64* @LLFC_TRAFFIC_TYPE_ISCSI, align 8
  %27 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %25, i64 %26
  %28 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ecore_map_q_cos(%struct.bxe_softc* %23, i32 %24, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @STATIC_COS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %3
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %36 = load i32, i32* @ECORE_ETH_Q, align 4
  %37 = load %struct.priority_cos*, %struct.priority_cos** %6, align 8
  %38 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %39 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %37, i64 %38
  %40 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ecore_map_q_cos(%struct.bxe_softc* %35, i32 %36, i32 %41)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %44 = load i32, i32* @ECORE_TOE_Q, align 4
  %45 = load %struct.priority_cos*, %struct.priority_cos** %6, align 8
  %46 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %47 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %45, i64 %46
  %48 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ecore_map_q_cos(%struct.bxe_softc* %43, i32 %44, i32 %49)
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %52 = load i32, i32* @ECORE_TOE_ACK_Q, align 4
  %53 = load %struct.priority_cos*, %struct.priority_cos** %6, align 8
  %54 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %55 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %53, i64 %54
  %56 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ecore_map_q_cos(%struct.bxe_softc* %51, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @ecore_map_q_cos(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
