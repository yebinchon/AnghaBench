; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i64, i32, i64, i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i32* }
%struct.TYPE_3__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@PNPBus = common dso_local global i64 0, align 8
@NDISUSB_STATUS_DETACH = common dso_local global i32 0, align 4
@ndisusb_halt = common dso_local global i64 0, align 8
@NDIS_EVENTS = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ndis_softc*)* @ndis_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndis_stop(%struct.ndis_softc* %0) #0 {
  %2 = alloca %struct.ndis_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ndis_softc* %0, %struct.ndis_softc** %2, align 8
  %4 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %4, i32 0, i32 10
  %6 = call i32 @callout_drain(i32* %5)
  %7 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %8 = call i32 @NDIS_LOCK(%struct.ndis_softc* %7)
  %9 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %9, i32 0, i32 9
  store i64 0, i64* %10, align 8
  %11 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %22, i32 0, i32 6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %21
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %17, %1
  %29 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %32 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %31)
  %33 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PNPBus, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %28
  %39 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PNPBus, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NDISUSB_STATUS_DETACH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* @ndisusb_halt, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %28
  %55 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %56 = call i32 @ndis_halt_nic(%struct.ndis_softc* %55)
  br label %57

57:                                               ; preds = %54, %51, %44, %38
  %58 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %59 = call i32 @NDIS_LOCK(%struct.ndis_softc* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %117, %57
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @NDIS_EVENTS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %120

64:                                               ; preds = %60
  %65 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %64
  %75 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %75, i32 0, i32 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %74
  %85 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %85, i32 0, i32 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @M_TEMP, align 4
  %94 = call i32 @free(i32* %92, i32 %93)
  %95 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %96 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %84, %74, %64
  %103 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %103, i32 0, i32 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %111 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %110, i32 0, i32 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %102
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %60

120:                                              ; preds = %60
  %121 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %122 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %126 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %125)
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @NDIS_LOCK(%struct.ndis_softc*) #1

declare dso_local i32 @NDIS_UNLOCK(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_halt_nic(%struct.ndis_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
