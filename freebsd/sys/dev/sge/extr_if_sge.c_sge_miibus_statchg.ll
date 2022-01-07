; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@SGE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@SC_SPEED_10 = common dso_local global i32 0, align 4
@SC_SPEED_100 = common dso_local global i32 0, align 4
@SGE_FLAG_FASTETHER = common dso_local global i32 0, align 4
@SC_SPEED_1000 = common dso_local global i32 0, align 4
@StationControl = common dso_local global i32 0, align 4
@SC_FDX = common dso_local global i32 0, align 4
@SC_SPEED_MASK = common dso_local global i32 0, align 4
@SGE_FLAG_SPEED_1000 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@SGE_FLAG_FDX = common dso_local global i32 0, align 4
@SGE_FLAG_RGMII = common dso_local global i32 0, align 4
@RGMIIDelay = common dso_local global i32 0, align 4
@SGE_FLAG_GMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sge_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.sge_softc*
  store %struct.sge_softc* %10, %struct.sge_softc** %3, align 8
  %11 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.mii_data*
  store %struct.mii_data* %15, %struct.mii_data** %4, align 8
  %16 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %16, i32 0, i32 1
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %5, align 8
  %19 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %20 = icmp eq %struct.mii_data* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = icmp eq %struct.ifnet* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %21, %1
  br label %170

32:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  %33 = load i32, i32* @SGE_FLAG_LINK, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %40 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFM_ACTIVE, align 4
  %43 = load i32, i32* @IFM_AVALID, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load i32, i32* @IFM_ACTIVE, align 4
  %47 = load i32, i32* @IFM_AVALID, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %32
  %51 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %52 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @IFM_SUBTYPE(i32 %53)
  switch i32 %54, label %84 [
    i32 128, label %55
    i32 129, label %62
    i32 130, label %69
  ]

55:                                               ; preds = %50
  %56 = load i32, i32* @SGE_FLAG_LINK, align 4
  %57 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %58 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @SC_SPEED_10, align 4
  store i32 %61, i32* %7, align 4
  br label %85

62:                                               ; preds = %50
  %63 = load i32, i32* @SGE_FLAG_LINK, align 4
  %64 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @SC_SPEED_100, align 4
  store i32 %68, i32* %7, align 4
  br label %85

69:                                               ; preds = %50
  %70 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %71 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SGE_FLAG_FASTETHER, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32, i32* @SGE_FLAG_LINK, align 4
  %78 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %79 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* @SC_SPEED_1000, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %69
  br label %85

84:                                               ; preds = %50
  br label %85

85:                                               ; preds = %84, %83, %62, %55
  br label %86

86:                                               ; preds = %85, %32
  %87 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %88 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SGE_FLAG_LINK, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %170

94:                                               ; preds = %86
  %95 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %96 = load i32, i32* @StationControl, align 4
  %97 = call i32 @CSR_READ_4(%struct.sge_softc* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @SC_FDX, align 4
  %99 = or i32 251658240, %98
  %100 = load i32, i32* @SC_SPEED_MASK, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @SC_SPEED_1000, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %94
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, 117440512
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @SGE_FLAG_SPEED_1000, align 4
  %112 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %113 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %125

116:                                              ; preds = %94
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, 67108864
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* @SGE_FLAG_SPEED_1000, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %122 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %116, %108
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %6, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %6, align 4
  %129 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %130 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @IFM_OPTIONS(i32 %131)
  %133 = load i32, i32* @IFM_FDX, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %125
  %137 = load i32, i32* @SC_FDX, align 4
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* @SGE_FLAG_FDX, align 4
  %141 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %142 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %152

145:                                              ; preds = %125
  %146 = load i32, i32* @SGE_FLAG_FDX, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %149 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %145, %136
  %153 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %154 = load i32, i32* @StationControl, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @CSR_WRITE_4(%struct.sge_softc* %153, i32 %154, i32 %155)
  %157 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %158 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SGE_FLAG_RGMII, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %152
  %164 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %165 = load i32, i32* @RGMIIDelay, align 4
  %166 = call i32 @CSR_WRITE_4(%struct.sge_softc* %164, i32 %165, i32 1089)
  %167 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %168 = load i32, i32* @RGMIIDelay, align 4
  %169 = call i32 @CSR_WRITE_4(%struct.sge_softc* %167, i32 %168, i32 1088)
  br label %170

170:                                              ; preds = %31, %93, %163, %152
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sge_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
