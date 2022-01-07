; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_tx_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_tx_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BXE_TX_CLEANUP_THRESHOLD = common dso_local global i64 0, align 8
@BXE_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, %struct.bxe_fastpath*)* @bxe_tx_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_tx_start_locked(%struct.bxe_softc* %0, i32 %1, %struct.bxe_fastpath* %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_fastpath*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bxe_fastpath* %2, %struct.bxe_fastpath** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %11 = call i32 @BXE_FP_TX_LOCK_ASSERT(%struct.bxe_fastpath* %10)
  br label %12

12:                                               ; preds = %85, %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @if_sendq_empty(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %86

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.mbuf* @if_dequeue(i32 %18)
  store %struct.mbuf* %19, %struct.mbuf** %7, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = icmp eq %struct.mbuf* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @__predict_false(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %86

26:                                               ; preds = %17
  %27 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %28 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %33 = call i32 @bxe_tx_encap(%struct.bxe_fastpath* %32, %struct.mbuf** %7)
  %34 = call i64 @__predict_false(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %26
  %37 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %38 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %43 = icmp ne %struct.mbuf* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %47 = call i32 @if_setdrvflagbits(i32 %45, i32 %46, i32 0)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = call i32 @if_sendq_prepend(i32 %48, %struct.mbuf* %49)
  %51 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %52 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %57 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %44, %36
  br label %86

62:                                               ; preds = %26
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %67 = call i32 @if_etherbpfmtap(i32 %65, %struct.mbuf* %66)
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %69 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %70 = call i64 @bxe_tx_avail(%struct.bxe_softc* %68, %struct.bxe_fastpath* %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @BXE_TX_CLEANUP_THRESHOLD, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %76 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %77 = call i32 @bxe_txeof(%struct.bxe_softc* %75, %struct.bxe_fastpath* %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @if_getdrvflags(i32 %78)
  %80 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %86

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %62
  br label %12

86:                                               ; preds = %83, %61, %25, %12
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @BXE_TX_TIMEOUT, align 4
  %91 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %92 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %86
  ret void
}

declare dso_local i32 @BXE_FP_TX_LOCK_ASSERT(%struct.bxe_fastpath*) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local %struct.mbuf* @if_dequeue(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @bxe_tx_encap(%struct.bxe_fastpath*, %struct.mbuf**) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @if_sendq_prepend(i32, %struct.mbuf*) #1

declare dso_local i32 @if_etherbpfmtap(i32, %struct.mbuf*) #1

declare dso_local i64 @bxe_tx_avail(%struct.bxe_softc*, %struct.bxe_fastpath*) #1

declare dso_local i32 @bxe_txeof(%struct.bxe_softc*, %struct.bxe_fastpath*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
