; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_miibus_linkchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_miibus_linkchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i64 0, align 8
@AL_10BASE_T_SPEED = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i64 0, align 8
@AL_100BASE_TX_SPEED = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i64 0, align 8
@AL_1000BASE_T_SPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ERROR: unknown MII media active 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @al_miibus_linkchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_miibus_linkchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_eth_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.al_eth_adapter* @device_get_softc(i32 %6)
  store %struct.al_eth_adapter* %7, %struct.al_eth_adapter** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %94

13:                                               ; preds = %1
  %14 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %94

23:                                               ; preds = %13
  %24 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFM_AVALID, align 4
  %30 = load i32, i32* @IFM_ACTIVE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = load i32, i32* @IFM_AVALID, align 4
  %34 = load i32, i32* @IFM_ACTIVE, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %94

38:                                               ; preds = %23
  %39 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFM_FDX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i64 1, i64* %4, align 8
  br label %48

48:                                               ; preds = %47, %38
  %49 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IFM_SUBTYPE(i32 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @IFM_10_T, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %59, i32 0, i32 2
  %61 = load i32, i32* @AL_10BASE_T_SPEED, align 4
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @al_eth_mac_link_config(i32* %60, i32 0, i32 1, i32 %61, i64 %62)
  br label %94

64:                                               ; preds = %48
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @IFM_100_TX, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %69, i32 0, i32 2
  %71 = load i32, i32* @AL_100BASE_TX_SPEED, align 4
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @al_eth_mac_link_config(i32* %70, i32 0, i32 1, i32 %71, i64 %72)
  br label %94

74:                                               ; preds = %64
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @IFM_1000_T, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %79, i32 0, i32 2
  %81 = load i32, i32* @AL_1000BASE_T_SPEED, align 4
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @al_eth_mac_link_config(i32* %80, i32 0, i32 1, i32 %81, i64 %82)
  br label %94

84:                                               ; preds = %74
  %85 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %84, %78, %68, %58, %37, %22, %12
  ret void
}

declare dso_local %struct.al_eth_adapter* @device_get_softc(i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @al_eth_mac_link_config(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
