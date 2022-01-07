; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glc_softc = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GELIC_INT_RXDONE = common dso_local global i32 0, align 4
@GELIC_INT_RXFRAME = common dso_local global i32 0, align 4
@GELIC_INT_TXDONE = common dso_local global i32 0, align 4
@GELIC_INT_TX_CHAIN_END = common dso_local global i32 0, align 4
@GELIC_INT_PHY = common dso_local global i32 0, align 4
@GELIC_GET_LINK_STATUS = common dso_local global i32 0, align 4
@GELIC_VLAN_TX_ETHERNET = common dso_local global i32 0, align 4
@GELIC_LINK_UP = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @glc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.glc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.glc_softc*
  store %struct.glc_softc* %8, %struct.glc_softc** %3, align 8
  %9 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %12, i32 0, i32 4
  %14 = call i32 @atomic_readandclear_64(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_unlock(i32* %19)
  br label %84

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @GELIC_INT_RXDONE, align 4
  %24 = load i32, i32* @GELIC_INT_RXFRAME, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %30 = call i32 @glc_rxintr(%struct.glc_softc* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @GELIC_INT_TXDONE, align 4
  %34 = load i32, i32* @GELIC_INT_TX_CHAIN_END, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %40 = call i32 @glc_txintr(%struct.glc_softc* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @GELIC_INT_PHY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %41
  %47 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GELIC_GET_LINK_STATUS, align 4
  %54 = load i32, i32* @GELIC_VLAN_TX_ETHERNET, align 4
  %55 = call i32 @lv1_net_control(i32 %49, i32 %52, i32 %53, i32 %54, i32 0, i32 0, i32* %5, i32* %6)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @GELIC_LINK_UP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @LINK_STATE_UP, align 4
  br label %64

62:                                               ; preds = %46
  %63 = load i32, i32* @LINK_STATE_DOWN, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %68 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %66, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @if_link_state_change(%struct.TYPE_2__* %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %64
  br label %80

80:                                               ; preds = %79, %41
  %81 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %82 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %81, i32 0, i32 0
  %83 = call i32 @mtx_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80, %17
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @atomic_readandclear_64(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @glc_rxintr(%struct.glc_softc*) #1

declare dso_local i32 @glc_txintr(%struct.glc_softc*) #1

declare dso_local i32 @lv1_net_control(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @if_link_state_change(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
