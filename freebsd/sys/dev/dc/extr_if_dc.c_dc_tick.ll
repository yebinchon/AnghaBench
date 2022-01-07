; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i64, i32, %struct.TYPE_2__, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32 }

@DC_TX_USE_TX_INTR = common dso_local global i32 0, align 4
@DC_REDUCED_MII_POLL = common dso_local global i32 0, align 4
@DC_21143_NWAY = common dso_local global i32 0, align 4
@DC_10BTSTAT = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i64 0, align 8
@DC_TSTAT_LS100 = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i64 0, align 8
@DC_TSTAT_LS10 = common dso_local global i32 0, align 4
@DC_ISR = common dso_local global i32 0, align 4
@DC_ISR_RX_STATE = common dso_local global i32 0, align 4
@DC_RXSTATE_WAIT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dc_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.dc_softc*
  store %struct.dc_softc* %8, %struct.dc_softc** %3, align 8
  %9 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %10 = call i32 @DC_LOCK_ASSERT(%struct.dc_softc* %9)
  %11 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %11, i32 0, i32 5
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mii_data* @device_get_softc(i32 %16)
  store %struct.mii_data* %17, %struct.mii_data** %4, align 8
  %18 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DC_TX_USE_TX_INTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %26 = call i32 @dc_txeof(%struct.dc_softc* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DC_REDUCED_MII_POLL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %110

34:                                               ; preds = %27
  %35 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %36 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DC_21143_NWAY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %34
  %42 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %43 = load i32, i32* @DC_10BTSTAT, align 4
  %44 = call i32 @CSR_READ_4(%struct.dc_softc* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %46 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IFM_SUBTYPE(i32 %47)
  %49 = load i64, i64* @IFM_100_TX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @DC_TSTAT_LS100, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %60 = call i32 @mii_mediachg(%struct.mii_data* %59)
  br label %61

61:                                               ; preds = %56, %51, %41
  %62 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %63 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @IFM_SUBTYPE(i32 %64)
  %66 = load i64, i64* @IFM_10_T, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @DC_TSTAT_LS10, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %77 = call i32 @mii_mediachg(%struct.mii_data* %76)
  br label %78

78:                                               ; preds = %73, %68, %61
  %79 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %80 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %85 = call i32 @mii_tick(%struct.mii_data* %84)
  br label %86

86:                                               ; preds = %83, %78
  br label %109

87:                                               ; preds = %34
  %88 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %89 = call i64 @DC_HAS_BROKEN_RXSTATE(%struct.dc_softc* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %93 = load i32, i32* @DC_ISR, align 4
  %94 = call i32 @CSR_READ_4(%struct.dc_softc* %92, i32 %93)
  %95 = load i32, i32* @DC_ISR_RX_STATE, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @DC_RXSTATE_WAIT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %91, %87
  %100 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %101 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %107 = call i32 @mii_tick(%struct.mii_data* %106)
  br label %108

108:                                              ; preds = %105, %99, %91
  br label %109

109:                                              ; preds = %108, %86
  br label %113

110:                                              ; preds = %27
  %111 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %112 = call i32 @mii_tick(%struct.mii_data* %111)
  br label %113

113:                                              ; preds = %110, %109
  %114 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %115 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %120 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %119, i32 0, i32 0
  %121 = call i32 @IFQ_DRV_IS_EMPTY(i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %125 = call i32 @dc_start_locked(%struct.ifnet* %124)
  br label %126

126:                                              ; preds = %123, %118, %113
  %127 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %128 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @DC_21143_NWAY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %126
  %134 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %135 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %133
  %139 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %140 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %139, i32 0, i32 2
  %141 = load i32, i32* @hz, align 4
  %142 = sdiv i32 %141, 10
  %143 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %144 = call i32 @callout_reset(i32* %140, i32 %142, void (i8*)* @dc_tick, %struct.dc_softc* %143)
  br label %151

145:                                              ; preds = %133, %126
  %146 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %147 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %146, i32 0, i32 2
  %148 = load i32, i32* @hz, align 4
  %149 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %150 = call i32 @callout_reset(i32* %147, i32 %148, void (i8*)* @dc_tick, %struct.dc_softc* %149)
  br label %151

151:                                              ; preds = %145, %138
  ret void
}

declare dso_local i32 @DC_LOCK_ASSERT(%struct.dc_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @dc_txeof(%struct.dc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i64 @DC_HAS_BROKEN_RXSTATE(%struct.dc_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @dc_start_locked(%struct.ifnet*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
