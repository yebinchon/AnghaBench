; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_multi_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_multi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@bnxt_copy_maddr = common dso_local global i32 0, align 4
@BNXT_MAX_MC_ADDRS = common dso_local global i32 0, align 4
@HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_MCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"set_multi: rx_mask set failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bnxt_multi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_multi_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.bnxt_softc* @iflib_get_softc(i32 %7)
  store %struct.bnxt_softc* %8, %struct.bnxt_softc** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @iflib_get_ifp(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bzero(i32* %16, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @bnxt_copy_maddr, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @if_foreach_llmaddr(i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @BNXT_MAX_MC_ADDRS, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST, align 4
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %33 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %38, i32 0, i32 1
  %40 = call i64 @bnxt_hwrm_cfa_l2_set_rx_mask(%struct.bnxt_softc* %37, %struct.TYPE_4__* %39)
  br label %82

41:                                               ; preds = %1
  %42 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %55 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %60 = call i32 @bus_dmamap_sync(i32 %53, i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %63 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_MCAST, align 4
  %66 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %67 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %72 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %73 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %72, i32 0, i32 1
  %74 = call i64 @bnxt_hwrm_cfa_l2_set_rx_mask(%struct.bnxt_softc* %71, %struct.TYPE_4__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %41
  %77 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %78 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %41
  br label %82

82:                                               ; preds = %81, %30
  ret void
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(i32, i32, i32*) #1

declare dso_local i64 @bnxt_hwrm_cfa_l2_set_rx_mask(%struct.bnxt_softc*, %struct.TYPE_4__*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
