; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BGE_TX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bge_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_start_locked(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.bge_softc* @if_getsoftc(i32 %7)
  store %struct.bge_softc* %8, %struct.bge_softc** %3, align 8
  %9 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %10 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %9)
  %11 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @if_getdrvflags(i32 %16)
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %1
  br label %79

25:                                               ; preds = %15
  %26 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %66, %25
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @if_sendq_empty(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %72

34:                                               ; preds = %29
  %35 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BGE_TX_RING_CNT, align 4
  %39 = sub nsw i32 %38, 16
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %44 = call i32 @if_setdrvflagbits(i32 %42, i32 %43, i32 0)
  br label %72

45:                                               ; preds = %34
  %46 = load i32, i32* %2, align 4
  %47 = call %struct.mbuf* @if_dequeue(i32 %46)
  store %struct.mbuf* %47, %struct.mbuf** %4, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %72

51:                                               ; preds = %45
  %52 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %53 = call i64 @bge_encap(%struct.bge_softc* %52, %struct.mbuf** %4, i32* %5)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = icmp eq %struct.mbuf* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %72

59:                                               ; preds = %55
  %60 = load i32, i32* %2, align 4
  %61 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %62 = call i32 @if_sendq_prepend(i32 %60, %struct.mbuf* %61)
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %65 = call i32 @if_setdrvflagbits(i32 %63, i32 %64, i32 0)
  br label %72

66:                                               ; preds = %51
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %71 = call i32 @if_bpfmtap(i32 %69, %struct.mbuf* %70)
  br label %29

72:                                               ; preds = %59, %58, %50, %41, %29
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @bge_start_tx(%struct.bge_softc* %76, i32 %77)
  br label %79

79:                                               ; preds = %24, %75, %72
  ret void
}

declare dso_local %struct.bge_softc* @if_getsoftc(i32) #1

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local %struct.mbuf* @if_dequeue(i32) #1

declare dso_local i64 @bge_encap(%struct.bge_softc*, %struct.mbuf**, i32*) #1

declare dso_local i32 @if_sendq_prepend(i32, %struct.mbuf*) #1

declare dso_local i32 @if_bpfmtap(i32, %struct.mbuf*) #1

declare dso_local i32 @bge_start_tx(%struct.bge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
