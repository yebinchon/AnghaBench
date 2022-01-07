; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@DME_ISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"dme_intr flags %#x busy %d ready %d intr %#x\00", align 1
@ISR_PT = common dso_local global i32 0, align 4
@DME_NSR = common dso_local global i32 0, align 4
@NSR_TX1END = common dso_local global i32 0, align 4
@DME_TSR1 = common dso_local global i32 0, align 4
@NSR_TX2END = common dso_local global i32 0, align 4
@DME_TSR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"dme_intr flags %#x busy %d ready %d nsr %#x\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ISR_PR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dme_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dme_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.dme_softc*
  store %struct.dme_softc* %8, %struct.dme_softc** %3, align 8
  %9 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %10 = call i32 @DME_LOCK(%struct.dme_softc* %9)
  %11 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %12 = load i32, i32* @DME_ISR, align 4
  %13 = call i32 @dme_read_reg(%struct.dme_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %15 = load i32, i32* @DME_ISR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dme_write_reg(%struct.dme_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %19 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %24 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %27 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DTR4(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i64 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ISR_PT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %105

35:                                               ; preds = %1
  %36 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %37 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %39 = load i32, i32* @DME_NSR, align 4
  %40 = call i32 @dme_read_reg(%struct.dme_softc* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NSR_TX1END, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %47 = load i32, i32* @DME_TSR1, align 4
  %48 = call i32 @dme_read_reg(%struct.dme_softc* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %60

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NSR_TX2END, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %56 = load i32, i32* @DME_TSR2, align 4
  %57 = call i32 @dme_read_reg(%struct.dme_softc* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %59

58:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %54
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %62 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %67 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %70 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @DTR4(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %68, i64 %71, i32 %72)
  %74 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %75 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %60
  %79 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %80 = call i32 @dme_prepare(%struct.dme_softc* %79)
  br label %81

81:                                               ; preds = %78, %60
  %82 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %83 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %88 = call i32 @dme_transmit(%struct.dme_softc* %87)
  %89 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %90 = call i32 @dme_prepare(%struct.dme_softc* %89)
  %91 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %92 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %97 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %98 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %86
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104, %1
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @ISR_PR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %115, %110
  %112 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %113 = call i64 @dme_rxeof(%struct.dme_softc* %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %111

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %105
  %118 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %119 = call i32 @DME_UNLOCK(%struct.dme_softc* %118)
  ret void
}

declare dso_local i32 @DME_LOCK(%struct.dme_softc*) #1

declare dso_local i32 @dme_read_reg(%struct.dme_softc*, i32) #1

declare dso_local i32 @dme_write_reg(%struct.dme_softc*, i32, i32) #1

declare dso_local i32 @DTR4(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @dme_prepare(%struct.dme_softc*) #1

declare dso_local i32 @dme_transmit(%struct.dme_softc*) #1

declare dso_local i64 @dme_rxeof(%struct.dme_softc*) #1

declare dso_local i32 @DME_UNLOCK(%struct.dme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
