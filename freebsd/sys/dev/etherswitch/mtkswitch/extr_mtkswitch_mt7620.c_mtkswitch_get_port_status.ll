; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_get_port_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mtkswitch_softc.0*, i32)* }
%struct.mtkswitch_softc.0 = type opaque

@MA_OWNED = common dso_local global i32 0, align 4
@PMSR_MAC_LINK_STS = common dso_local global i32 0, align 4
@MTKSWITCH_LINK_UP = common dso_local global i32 0, align 4
@PMSR_MAC_DPX_STS = common dso_local global i32 0, align 4
@MTKSWITCH_DUPLEX = common dso_local global i32 0, align 4
@MTKSWITCH_SPEED_10 = common dso_local global i32 0, align 4
@MTKSWITCH_SPEED_100 = common dso_local global i32 0, align 4
@MTKSWITCH_SPEED_1000 = common dso_local global i32 0, align 4
@PMSR_TX_FC_STS = common dso_local global i32 0, align 4
@MTKSWITCH_TXFLOW = common dso_local global i32 0, align 4
@PMSR_RX_FC_STS = common dso_local global i32 0, align 4
@MTKSWITCH_RXFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, i32)* @mtkswitch_get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_get_port_status(%struct.mtkswitch_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtkswitch_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %8, i32 %9)
  store i32 0, i32* %6, align 4
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %13, align 8
  %15 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %16 = bitcast %struct.mtkswitch_softc* %15 to %struct.mtkswitch_softc.0*
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @MTKSWITCH_PMSR(i32 %17)
  %19 = call i32 %14(%struct.mtkswitch_softc.0* %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PMSR_MAC_LINK_STS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @MTKSWITCH_LINK_UP, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PMSR_MAC_DPX_STS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @MTKSWITCH_DUPLEX, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @PMSR_MAC_SPD(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @MTKSWITCH_SPEED_10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %62

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @MTKSWITCH_SPEED_100, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @MTKSWITCH_SPEED_1000, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %49
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PMSR_TX_FC_STS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @MTKSWITCH_TXFLOW, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @PMSR_RX_FC_STS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @MTKSWITCH_RXFLOW, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_PMSR(i32) #1

declare dso_local i32 @PMSR_MAC_SPD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
