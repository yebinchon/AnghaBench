; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ifmedia_sts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ifmedia_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }
%struct.bge_softc = type { i32, i32 }
%struct.mii_data = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@BGE_FLAG_TBI = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@BGE_MAC_STS = common dso_local global i32 0, align 4
@BGE_MACSTAT_TBI_PCS_SYNCHED = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@BGE_MAC_MODE = common dso_local global i32 0, align 4
@BGE_MACMODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifmediareq*)* @bge_ifmedia_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_ifmedia_sts(i32 %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.bge_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bge_softc* @if_getsoftc(i32 %7)
  store %struct.bge_softc* %8, %struct.bge_softc** %5, align 8
  %9 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %10 = call i32 @BGE_LOCK(%struct.bge_softc* %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @if_getflags(i32 %11)
  %13 = load i32, i32* @IFF_UP, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %18 = call i32 @BGE_UNLOCK(%struct.bge_softc* %17)
  br label %99

19:                                               ; preds = %2
  %20 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %21 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BGE_FLAG_TBI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %19
  %27 = load i32, i32* @IFM_AVALID, align 4
  %28 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %29 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @IFM_ETHER, align 4
  %31 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %32 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %34 = load i32, i32* @BGE_MAC_STS, align 4
  %35 = call i32 @CSR_READ_4(%struct.bge_softc* %33, i32 %34)
  %36 = load i32, i32* @BGE_MACSTAT_TBI_PCS_SYNCHED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load i32, i32* @IFM_ACTIVE, align 4
  %41 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %42 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %53

45:                                               ; preds = %26
  %46 = load i32, i32* @IFM_NONE, align 4
  %47 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %48 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %52 = call i32 @BGE_UNLOCK(%struct.bge_softc* %51)
  br label %99

53:                                               ; preds = %39
  %54 = load i32, i32* @IFM_1000_SX, align 4
  %55 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %56 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %60 = load i32, i32* @BGE_MAC_MODE, align 4
  %61 = call i32 @CSR_READ_4(%struct.bge_softc* %59, i32 %60)
  %62 = load i32, i32* @BGE_MACMODE_HALF_DUPLEX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load i32, i32* @IFM_HDX, align 4
  %67 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %68 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %77

71:                                               ; preds = %53
  %72 = load i32, i32* @IFM_FDX, align 4
  %73 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %74 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %79 = call i32 @BGE_UNLOCK(%struct.bge_softc* %78)
  br label %99

80:                                               ; preds = %19
  %81 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %82 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.mii_data* @device_get_softc(i32 %83)
  store %struct.mii_data* %84, %struct.mii_data** %6, align 8
  %85 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %86 = call i32 @mii_pollstat(%struct.mii_data* %85)
  %87 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %88 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %91 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %93 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %96 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %98 = call i32 @BGE_UNLOCK(%struct.bge_softc* %97)
  br label %99

99:                                               ; preds = %80, %77, %45, %16
  ret void
}

declare dso_local %struct.bge_softc* @if_getsoftc(i32) #1

declare dso_local i32 @BGE_LOCK(%struct.bge_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @BGE_UNLOCK(%struct.bge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
