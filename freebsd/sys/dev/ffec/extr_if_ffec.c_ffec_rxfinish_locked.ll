; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_rxfinish_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_rxfinish_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i64, i32, i32, %struct.ffec_hwdesc*, i32 }
%struct.ffec_hwdesc = type { i32, i32 }

@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@FEC_RXDESC_EMPTY = common dso_local global i32 0, align 4
@FEC_RXDESC_LEN_MASK = common dso_local global i32 0, align 4
@FEC_RXDESC_L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fec_rxfinish: received frame without LAST bit set\00", align 1
@FEC_RXDESC_ERROR_BITS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@FEC_RDAR_REG = common dso_local global i32 0, align 4
@FEC_RDAR_RDAR = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*)* @ffec_rxfinish_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_rxfinish_locked(%struct.ffec_softc* %0) #0 {
  %2 = alloca %struct.ffec_softc*, align 8
  %3 = alloca %struct.ffec_hwdesc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %2, align 8
  %6 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %7 = call i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc* %6)
  %8 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %15 = call i32 @bus_dmamap_sync(i32 %10, i32 %13, i32 %14)
  %16 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %23 = call i32 @bus_dmamap_sync(i32 %18, i32 %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %116, %1
  %25 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %25, i32 0, i32 3
  %27 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %26, align 8
  %28 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %27, i64 %30
  store %struct.ffec_hwdesc* %31, %struct.ffec_hwdesc** %3, align 8
  %32 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %3, align 8
  %33 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FEC_RXDESC_EMPTY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %124

39:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  %40 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %3, align 8
  %41 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FEC_RXDESC_LEN_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 64
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %49 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %52, i32 0, i32 3
  %54 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %53, align 8
  %55 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %54, i64 %57
  %59 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ffec_setup_rxdesc(%struct.ffec_softc* %48, i64 %51, i32 %60)
  br label %116

62:                                               ; preds = %39
  %63 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %3, align 8
  %64 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FEC_RXDESC_L, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %75 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %78, i32 0, i32 3
  %80 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %79, align 8
  %81 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %80, i64 %83
  %85 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ffec_setup_rxdesc(%struct.ffec_softc* %74, i64 %77, i32 %86)
  br label %115

88:                                               ; preds = %62
  %89 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %3, align 8
  %90 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FEC_RXDESC_ERROR_BITS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %97 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %101 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %100, i32 0, i32 3
  %102 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %101, align 8
  %103 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %102, i64 %105
  %107 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ffec_setup_rxdesc(%struct.ffec_softc* %96, i64 %99, i32 %108)
  br label %114

110:                                              ; preds = %88
  %111 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @ffec_rxfinish_onebuf(%struct.ffec_softc* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %95
  br label %115

115:                                              ; preds = %114, %69
  br label %116

116:                                              ; preds = %115, %47
  %117 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %118 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @next_rxidx(%struct.ffec_softc* %117, i64 %120)
  %122 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %123 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %24

124:                                              ; preds = %38
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %124
  %128 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %129 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %132 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %135 = call i32 @bus_dmamap_sync(i32 %130, i32 %133, i32 %134)
  %136 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %137 = load i32, i32* @FEC_RDAR_REG, align 4
  %138 = load i32, i32* @FEC_RDAR_RDAR, align 4
  %139 = call i32 @WR4(%struct.ffec_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %141 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %144 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %147 = call i32 @bus_dmamap_sync(i32 %142, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %127, %124
  ret void
}

declare dso_local i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ffec_setup_rxdesc(%struct.ffec_softc*, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ffec_rxfinish_onebuf(%struct.ffec_softc*, i32) #1

declare dso_local i64 @next_rxidx(%struct.ffec_softc*, i64) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
