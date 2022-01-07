; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.glc_softc* }
%struct.glc_softc = type { i32, i32 }
%struct.ifmediareq = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@GELIC_GET_LINK_STATUS = common dso_local global i32 0, align 4
@GELIC_VLAN_TX_ETHERNET = common dso_local global i32 0, align 4
@GELIC_LINK_UP = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@GELIC_SPEED_10 = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@GELIC_SPEED_100 = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@GELIC_SPEED_1000 = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@GELIC_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @glc_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glc_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.glc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.glc_softc*, %struct.glc_softc** %9, align 8
  store %struct.glc_softc* %10, %struct.glc_softc** %5, align 8
  %11 = load i32, i32* @IFM_AVALID, align 4
  %12 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %13 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IFM_ETHER, align 4
  %15 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %16 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %18 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %21 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GELIC_GET_LINK_STATUS, align 4
  %24 = load i32, i32* @GELIC_VLAN_TX_ETHERNET, align 4
  %25 = call i32 @lv1_net_control(i32 %19, i32 %22, i32 %23, i32 %24, i32 0, i32 0, i32* %6, i32* %7)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @GELIC_LINK_UP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @IFM_ACTIVE, align 4
  %32 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %33 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GELIC_SPEED_10, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @IFM_10_T, align 4
  %43 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %44 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %71

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @GELIC_SPEED_100, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @IFM_100_TX, align 4
  %54 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %55 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %70

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @GELIC_SPEED_1000, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @IFM_1000_T, align 4
  %65 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %66 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %58
  br label %70

70:                                               ; preds = %69, %52
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @GELIC_FULL_DUPLEX, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @IFM_FDX, align 4
  %78 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %79 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %88

82:                                               ; preds = %71
  %83 = load i32, i32* @IFM_HDX, align 4
  %84 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %85 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %76
  ret void
}

declare dso_local i32 @lv1_net_control(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
