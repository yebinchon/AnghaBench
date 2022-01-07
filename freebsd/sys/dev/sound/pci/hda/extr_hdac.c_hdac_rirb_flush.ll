; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_rirb_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_rirb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i64, i64, i32*, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.hdac_rirb = type { i32, i32 }

@HDAC_RIRBWP = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@HDAC_RIRB_RESPONSE_EX_UNSOLICITED = common dso_local global i32 0, align 4
@HDAC_UNSOLQ_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unexpected unsolicited response from address %d: %08x\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_softc*)* @hdac_rirb_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_rirb_flush(%struct.hdac_softc* %0) #0 {
  %2 = alloca %struct.hdac_softc*, align 8
  %3 = alloca %struct.hdac_rirb*, align 8
  %4 = alloca %struct.hdac_rirb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hdac_softc* %0, %struct.hdac_softc** %2, align 8
  %10 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %11 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.hdac_rirb*
  store %struct.hdac_rirb* %14, %struct.hdac_rirb** %3, align 8
  %15 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %16 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %15, i32 0, i32 7
  %17 = load i32, i32* @HDAC_RIRBWP, align 4
  %18 = call i64 @HDAC_READ_1(i32* %16, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %20 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %24 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %28 = call i32 @bus_dmamap_sync(i32 %22, i32 %26, i32 %27)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %131, %1
  %30 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %31 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %134

35:                                               ; preds = %29
  %36 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %37 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %41 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %44 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = urem i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.hdac_rirb*, %struct.hdac_rirb** %3, align 8
  %48 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %49 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.hdac_rirb, %struct.hdac_rirb* %47, i64 %50
  store %struct.hdac_rirb* %51, %struct.hdac_rirb** %4, align 8
  %52 = load %struct.hdac_rirb*, %struct.hdac_rirb** %4, align 8
  %53 = getelementptr inbounds %struct.hdac_rirb, %struct.hdac_rirb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32toh(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.hdac_rirb*, %struct.hdac_rirb** %4, align 8
  %57 = getelementptr inbounds %struct.hdac_rirb, %struct.hdac_rirb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32toh(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @HDAC_RIRB_RESPONSE_EX_SDATA_IN(i32 %60)
  store i64 %61, i64* %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @HDAC_RIRB_RESPONSE_EX_UNSOLICITED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %35
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %69 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %72 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 %67, i32* %76, align 4
  %77 = load i32, i32* @HDAC_UNSOLQ_MAX, align 4
  %78 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %79 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = srem i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i64, i64* %5, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %85 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %88 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  store i32 %83, i32* %92, align 4
  %93 = load i32, i32* @HDAC_UNSOLQ_MAX, align 4
  %94 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %95 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = srem i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %131

98:                                               ; preds = %35
  %99 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %100 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %99, i32 0, i32 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sle i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %98
  %108 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %109 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %111, i32 %112)
  br label %130

114:                                              ; preds = %98
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %117 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %116, i32 0, i32 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32 %115, i32* %121, align 8
  %122 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %123 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %122, i32 0, i32 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* %127, align 8
  br label %130

130:                                              ; preds = %114, %107
  br label %131

131:                                              ; preds = %130, %66
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %29

134:                                              ; preds = %29
  %135 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %136 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %140 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %144 = call i32 @bus_dmamap_sync(i32 %138, i32 %142, i32 %143)
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i64 @HDAC_READ_1(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @HDAC_RIRB_RESPONSE_EX_SDATA_IN(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
