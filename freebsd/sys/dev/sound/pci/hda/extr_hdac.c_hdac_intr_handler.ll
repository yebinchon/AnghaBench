; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@HDAC_INTSTS = common dso_local global i32 0, align 4
@HDAC_INTSTS_GIS = common dso_local global i32 0, align 4
@HDAC_INTSTS_CIS = common dso_local global i32 0, align 4
@HDAC_RIRBSTS = common dso_local global i64 0, align 8
@HDAC_RIRBSTS_RINTFL = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@HDAC_INTSTS_SIS_MASK = common dso_local global i32 0, align 4
@HDAC_SDSTS = common dso_local global i64 0, align 8
@HDAC_SDSTS_DESE = common dso_local global i32 0, align 4
@HDAC_SDSTS_FIFOE = common dso_local global i32 0, align 4
@HDAC_SDSTS_BCIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hdac_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_intr_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hdac_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.hdac_softc*
  store %struct.hdac_softc* %9, %struct.hdac_softc** %3, align 8
  %10 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %11 = call i32 @hdac_lock(%struct.hdac_softc* %10)
  %12 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %13 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %12, i32 0, i32 3
  %14 = load i32, i32* @HDAC_INTSTS, align 4
  %15 = call i32 @HDAC_READ_4(i32* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HDAC_INTSTS_GIS, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %22 = call i32 @hdac_unlock(%struct.hdac_softc* %21)
  br label %138

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HDAC_INTSTS_CIS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %23
  %29 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %30 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %29, i32 0, i32 3
  %31 = load i64, i64* @HDAC_RIRBSTS, align 8
  %32 = call i32 @HDAC_READ_1(i32* %30, i64 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %38, %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @HDAC_RIRBSTS_RINTFL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %40 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %39, i32 0, i32 3
  %41 = load i64, i64* @HDAC_RIRBSTS, align 8
  %42 = load i32, i32* @HDAC_RIRBSTS_RINTFL, align 4
  %43 = call i32 @HDAC_WRITE_1(i32* %40, i64 %41, i32 %42)
  %44 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %45 = call i32 @hdac_rirb_flush(%struct.hdac_softc* %44)
  %46 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %47 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %46, i32 0, i32 3
  %48 = load i64, i64* @HDAC_RIRBSTS, align 8
  %49 = call i32 @HDAC_READ_1(i32* %47, i64 %48)
  store i32 %49, i32* %6, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %52 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %55 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* @taskqueue_thread, align 4
  %60 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %61 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %60, i32 0, i32 5
  %62 = call i32 @taskqueue_enqueue(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %50
  br label %64

64:                                               ; preds = %63, %23
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @HDAC_INTSTS_SIS_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %130

69:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %126, %69
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %73 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %129

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %126

83:                                               ; preds = %76
  %84 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %85 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %84, i32 0, i32 3
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 %86, 5
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @HDAC_SDSTS, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* @HDAC_SDSTS_DESE, align 4
  %92 = load i32, i32* @HDAC_SDSTS_FIFOE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @HDAC_SDSTS_BCIS, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @HDAC_WRITE_1(i32* %85, i64 %90, i32 %95)
  %97 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %98 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %4, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %125

106:                                              ; preds = %83
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %109 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %108, i32 0, i32 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %117 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %116, i32 0, i32 4
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @HDAC_STREAM_INTR(i32* %107, i32 %115, i32 %123)
  br label %125

125:                                              ; preds = %106, %83
  br label %126

126:                                              ; preds = %125, %82
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %70

129:                                              ; preds = %70
  br label %130

130:                                              ; preds = %129, %64
  %131 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %132 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %131, i32 0, i32 3
  %133 = load i32, i32* @HDAC_INTSTS, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @HDAC_WRITE_4(i32* %132, i32 %133, i32 %134)
  %136 = load %struct.hdac_softc*, %struct.hdac_softc** %3, align 8
  %137 = call i32 @hdac_unlock(%struct.hdac_softc* %136)
  br label %138

138:                                              ; preds = %130, %20
  ret void
}

declare dso_local i32 @hdac_lock(%struct.hdac_softc*) #1

declare dso_local i32 @HDAC_READ_4(i32*, i32) #1

declare dso_local i32 @hdac_unlock(%struct.hdac_softc*) #1

declare dso_local i32 @HDAC_READ_1(i32*, i64) #1

declare dso_local i32 @HDAC_WRITE_1(i32*, i64, i32) #1

declare dso_local i32 @hdac_rirb_flush(%struct.hdac_softc*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @HDAC_STREAM_INTR(i32*, i32, i32) #1

declare dso_local i32 @HDAC_WRITE_4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
