; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_promisc_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_promisc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BNXT_MAX_MC_ADDRS = common dso_local global i64 0, align 8
@HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_PROMISCUOUS = common dso_local global i32 0, align 4
@HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ANYVLAN_NONVLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bnxt_promisc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_promisc_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_softc*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.bnxt_softc* @iflib_get_softc(i32 %8)
  store %struct.bnxt_softc* %9, %struct.bnxt_softc** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_5__* @iflib_get_ifp(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_ALLMULTI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = call i64 @if_llmaddr_count(%struct.TYPE_5__* %19)
  %21 = load i64, i64* @BNXT_MAX_MC_ADDRS, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST, align 4
  %25 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %26 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %34 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %32
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_PROMISC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_PROMISCUOUS, align 4
  %47 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ANYVLAN_NONVLAN, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %50 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %64

54:                                               ; preds = %38
  %55 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_PROMISCUOUS, align 4
  %56 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ANYVLAN_NONVLAN, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %58
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %54, %45
  %65 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %66 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %67 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %66, i32 0, i32 0
  %68 = call i32 @bnxt_hwrm_cfa_l2_set_rx_mask(%struct.bnxt_softc* %65, %struct.TYPE_6__* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local %struct.TYPE_5__* @iflib_get_ifp(i32) #1

declare dso_local i64 @if_llmaddr_count(%struct.TYPE_5__*) #1

declare dso_local i32 @bnxt_hwrm_cfa_l2_set_rx_mask(%struct.bnxt_softc*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
