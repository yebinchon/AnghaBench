; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32, i32, %struct.ffec_hwdesc*, i32, %struct.ffec_bufmap*, %struct.ffec_hwdesc*, i32, i64, %struct.ifnet* }
%struct.ffec_bufmap = type { i32*, i32 }
%struct.ffec_hwdesc = type { i64 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@FEC_ECR_REG = common dso_local global i32 0, align 4
@FEC_ECR_ETHEREN = common dso_local global i32 0, align 4
@FEC_IEM_REG = common dso_local global i32 0, align 4
@FEC_IER_REG = common dso_local global i32 0, align 4
@RX_DESC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*)* @ffec_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_stop_locked(%struct.ffec_softc* %0) #0 {
  %2 = alloca %struct.ffec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ffec_hwdesc*, align 8
  %5 = alloca %struct.ffec_bufmap*, align 8
  %6 = alloca i32, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %2, align 8
  %7 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %8 = call i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc* %7)
  %9 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %9, i32 0, i32 8
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %23 = load i32, i32* @FEC_ECR_REG, align 4
  %24 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %25 = load i32, i32* @FEC_ECR_REG, align 4
  %26 = call i32 @RD4(%struct.ffec_softc* %24, i32 %25)
  %27 = load i32, i32* @FEC_ECR_ETHEREN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @WR4(%struct.ffec_softc* %22, i32 %23, i32 %29)
  %31 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %32 = load i32, i32* @FEC_IEM_REG, align 4
  %33 = call i32 @WR4(%struct.ffec_softc* %31, i32 %32, i32 0)
  %34 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %35 = load i32, i32* @FEC_IER_REG, align 4
  %36 = call i32 @WR4(%struct.ffec_softc* %34, i32 %35, i32 -1)
  %37 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %37, i32 0, i32 6
  %39 = call i32 @callout_stop(i32* %38)
  %40 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %83, %1
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  %50 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %50, i32 0, i32 5
  %52 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %52, i64 %54
  store %struct.ffec_hwdesc* %55, %struct.ffec_hwdesc** %4, align 8
  %56 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %56, i32 0, i32 4
  %58 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %58, i64 %60
  store %struct.ffec_bufmap* %61, %struct.ffec_bufmap** %5, align 8
  %62 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %4, align 8
  %63 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %49
  %67 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %5, align 8
  %71 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bus_dmamap_unload(i32 %69, i32 %72)
  %74 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %5, align 8
  %75 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @m_freem(i32* %76)
  %78 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %5, align 8
  %79 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ffec_setup_txdesc(%struct.ffec_softc* %80, i32 %81, i32 0, i32 0)
  br label %83

83:                                               ; preds = %66, %49
  %84 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @next_txidx(%struct.ffec_softc* %84, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %43

87:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %105, %87
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @RX_DESC_COUNT, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %93, i32 0, i32 2
  %95 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %95, i64 %97
  store %struct.ffec_hwdesc* %98, %struct.ffec_hwdesc** %4, align 8
  %99 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %4, align 8
  %102 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ffec_setup_rxdesc(%struct.ffec_softc* %99, i32 %100, i64 %103)
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %88

108:                                              ; preds = %88
  ret void
}

declare dso_local i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc*) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.ffec_softc*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ffec_setup_txdesc(%struct.ffec_softc*, i32, i32, i32) #1

declare dso_local i32 @next_txidx(%struct.ffec_softc*, i32) #1

declare dso_local i32 @ffec_setup_rxdesc(%struct.ffec_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
