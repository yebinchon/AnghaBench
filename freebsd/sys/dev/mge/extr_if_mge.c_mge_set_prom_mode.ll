; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_set_prom_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_set_prom_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@MGE_PORT_CONFIG = common dso_local global i32 0, align 4
@PORT_CONFIG_UPM = common dso_local global i64 0, align 8
@MGE_MCAST_REG_NUMBER = common dso_local global i64 0, align 8
@MGE_UCAST_REG_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*, i32)* @mge_set_prom_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_set_prom_mode(%struct.mge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mge_softc* %0, %struct.mge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %2
  %17 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %18 = load i32, i32* @MGE_PORT_CONFIG, align 4
  %19 = call i64 @MGE_READ(%struct.mge_softc* %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* @PORT_CONFIG_UPM, align 8
  %21 = load i64, i64* %5, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %24 = load i32, i32* @MGE_PORT_CONFIG, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @MGE_WRITE(%struct.mge_softc* %23, i32 %24, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 1
  %29 = or i32 1, %28
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 %30, 1
  %32 = or i32 1, %31
  %33 = shl i32 %32, 8
  %34 = or i32 %29, %33
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 1
  %37 = or i32 1, %36
  %38 = shl i32 %37, 16
  %39 = or i32 %34, %38
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 1
  %42 = or i32 1, %41
  %43 = shl i32 %42, 24
  %44 = or i32 %39, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %61, %16
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @MGE_MCAST_REG_NUMBER, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @MGE_DA_FILTER_SPEC_MCAST(i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @MGE_WRITE(%struct.mge_softc* %51, i32 %53, i64 %54)
  %56 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @MGE_DA_FILTER_OTH_MCAST(i64 %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @MGE_WRITE(%struct.mge_softc* %56, i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %46

64:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @MGE_UCAST_REG_NUMBER, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @MGE_DA_FILTER_UCAST(i64 %71)
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @MGE_WRITE(%struct.mge_softc* %70, i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %65

78:                                               ; preds = %65
  br label %110

79:                                               ; preds = %2
  %80 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %81 = load i32, i32* @MGE_PORT_CONFIG, align 4
  %82 = call i64 @MGE_READ(%struct.mge_softc* %80, i32 %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* @PORT_CONFIG_UPM, align 8
  %84 = xor i64 %83, -1
  %85 = load i64, i64* %5, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %5, align 8
  %87 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %88 = load i32, i32* @MGE_PORT_CONFIG, align 4
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @MGE_WRITE(%struct.mge_softc* %87, i32 %88, i64 %89)
  store i64 0, i64* %7, align 8
  br label %91

91:                                               ; preds = %104, %79
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @MGE_MCAST_REG_NUMBER, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @MGE_DA_FILTER_SPEC_MCAST(i64 %97)
  %99 = call i32 @MGE_WRITE(%struct.mge_softc* %96, i32 %98, i64 0)
  %100 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @MGE_DA_FILTER_OTH_MCAST(i64 %101)
  %103 = call i32 @MGE_WRITE(%struct.mge_softc* %100, i32 %102, i64 0)
  br label %104

104:                                              ; preds = %95
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %91

107:                                              ; preds = %91
  %108 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %109 = call i32 @mge_set_mac_address(%struct.mge_softc* %108)
  br label %110

110:                                              ; preds = %107, %78
  ret void
}

declare dso_local i64 @MGE_READ(%struct.mge_softc*, i32) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i64) #1

declare dso_local i32 @MGE_DA_FILTER_SPEC_MCAST(i64) #1

declare dso_local i32 @MGE_DA_FILTER_OTH_MCAST(i64) #1

declare dso_local i32 @MGE_DA_FILTER_UCAST(i64) #1

declare dso_local i32 @mge_set_mac_address(%struct.mge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
