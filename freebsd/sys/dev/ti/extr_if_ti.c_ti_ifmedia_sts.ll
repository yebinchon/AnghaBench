; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_ifmedia_sts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_ifmedia_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ti_softc* }
%struct.ti_softc = type { i64, i64 }
%struct.ifmediareq = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@TI_EV_CODE_LINK_DOWN = common dso_local global i64 0, align 8
@IFM_ACTIVE = common dso_local global i32 0, align 4
@TI_EV_CODE_GIG_LINK_UP = common dso_local global i64 0, align 8
@TI_GCR_GLINK_STAT = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@TI_GLNK_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@TI_EV_CODE_LINK_UP = common dso_local global i64 0, align 8
@TI_GCR_LINK_STAT = common dso_local global i32 0, align 4
@TI_LNK_100MB = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@TI_LNK_10MB = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_FX = common dso_local global i32 0, align 4
@IFM_10_FL = common dso_local global i32 0, align 4
@TI_LNK_FULL_DUPLEX = common dso_local global i32 0, align 4
@TI_LNK_HALF_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @ti_ifmedia_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_ifmedia_sts(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ti_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.ti_softc*, %struct.ti_softc** %8, align 8
  store %struct.ti_softc* %9, %struct.ti_softc** %5, align 8
  %10 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %11 = call i32 @TI_LOCK(%struct.ti_softc* %10)
  %12 = load i32, i32* @IFM_AVALID, align 4
  %13 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %14 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IFM_ETHER, align 4
  %16 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %17 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TI_EV_CODE_LINK_DOWN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %25 = call i32 @TI_UNLOCK(%struct.ti_softc* %24)
  br label %162

26:                                               ; preds = %2
  %27 = load i32, i32* @IFM_ACTIVE, align 4
  %28 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %29 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TI_EV_CODE_GIG_LINK_UP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %26
  %38 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %39 = load i32, i32* @TI_GCR_GLINK_STAT, align 4
  %40 = call i32 @CSR_READ_4(%struct.ti_softc* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32, i32* @IFM_1000_T, align 4
  %47 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %48 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %57

51:                                               ; preds = %37
  %52 = load i32, i32* @IFM_1000_SX, align 4
  %53 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %54 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @TI_GLNK_FULL_DUPLEX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @IFM_FDX, align 4
  %64 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %65 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %74

68:                                               ; preds = %57
  %69 = load i32, i32* @IFM_HDX, align 4
  %70 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %71 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %62
  br label %159

75:                                               ; preds = %26
  %76 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %77 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TI_EV_CODE_LINK_UP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %158

81:                                               ; preds = %75
  %82 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %83 = load i32, i32* @TI_GCR_LINK_STAT, align 4
  %84 = call i32 @CSR_READ_4(%struct.ti_softc* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @TI_LNK_100MB, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @IFM_100_TX, align 4
  %96 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %97 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @TI_LNK_10MB, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @IFM_10_T, align 4
  %107 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %108 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %100
  br label %135

112:                                              ; preds = %81
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @TI_LNK_100MB, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @IFM_100_FX, align 4
  %119 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %120 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @TI_LNK_10MB, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @IFM_10_FL, align 4
  %130 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %131 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %123
  br label %135

135:                                              ; preds = %134, %111
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @TI_LNK_FULL_DUPLEX, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* @IFM_FDX, align 4
  %142 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %143 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %135
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @TI_LNK_HALF_DUPLEX, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* @IFM_HDX, align 4
  %153 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %154 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157, %75
  br label %159

159:                                              ; preds = %158, %74
  %160 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %161 = call i32 @TI_UNLOCK(%struct.ti_softc* %160)
  br label %162

162:                                              ; preds = %159, %23
  ret void
}

declare dso_local i32 @TI_LOCK(%struct.ti_softc*) #1

declare dso_local i32 @TI_UNLOCK(%struct.ti_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.ti_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
