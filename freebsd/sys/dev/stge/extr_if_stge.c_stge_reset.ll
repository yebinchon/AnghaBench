; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32, i32, i32 }

@STGE_AsicCtrl = common dso_local global i32 0, align 4
@AC_TxReset = common dso_local global i32 0, align 4
@AC_FIFO = common dso_local global i32 0, align 4
@AC_RxReset = common dso_local global i32 0, align 4
@AC_GlobalReset = common dso_local global i32 0, align 4
@AC_DMA = common dso_local global i32 0, align 4
@AC_Network = common dso_local global i32 0, align 4
@AC_Host = common dso_local global i32 0, align 4
@AC_AutoInit = common dso_local global i32 0, align 4
@AC_RstOut = common dso_local global i32 0, align 4
@STGE_TIMEOUT = common dso_local global i32 0, align 4
@AC_ResetBusy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"reset failed to complete\0A\00", align 1
@AC_LEDMode = common dso_local global i32 0, align 4
@AC_LEDSpeed = common dso_local global i32 0, align 4
@AC_LEDModeBit1 = common dso_local global i32 0, align 4
@STGE_PhySet = common dso_local global i32 0, align 4
@PS_MemLenb9b = common dso_local global i32 0, align 4
@PS_MemLen = common dso_local global i32 0, align 4
@PS_NonCompdet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*, i32)* @stge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_reset(%struct.stge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %10 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %9)
  store i32 5000, i32* %8, align 4
  %11 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %12 = load i32, i32* @STGE_AsicCtrl, align 4
  %13 = call i32 @CSR_READ_4(%struct.stge_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %28 [
    i32 128, label %15
    i32 129, label %21
    i32 130, label %27
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @AC_TxReset, align 4
  %17 = load i32, i32* @AC_FIFO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  store i32 100, i32* %8, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load i32, i32* @AC_RxReset, align 4
  %23 = load i32, i32* @AC_FIFO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  store i32 100, i32* %8, align 4
  br label %56

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %2, %27
  %29 = load i32, i32* @AC_GlobalReset, align 4
  %30 = load i32, i32* @AC_RxReset, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AC_TxReset, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AC_DMA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AC_FIFO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AC_Network, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AC_Host, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @AC_AutoInit, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %28
  %49 = load i32, i32* @AC_RstOut, align 4
  br label %51

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %43, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %21, %15
  %57 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %58 = load i32, i32* @STGE_AsicCtrl, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @CSR_WRITE_4(%struct.stge_softc* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @DELAY(i32 %61)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %78, %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @STGE_TIMEOUT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %69 = load i32, i32* @STGE_AsicCtrl, align 4
  %70 = call i32 @CSR_READ_4(%struct.stge_softc* %68, i32 %69)
  %71 = load i32, i32* @AC_ResetBusy, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %81

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @DELAY(i32 %76)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %63

81:                                               ; preds = %74, %63
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @STGE_TIMEOUT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %87 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %92 = load i32, i32* @STGE_AsicCtrl, align 4
  %93 = call i32 @CSR_READ_4(%struct.stge_softc* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @AC_LEDMode, align 4
  %95 = load i32, i32* @AC_LEDSpeed, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @AC_LEDModeBit1, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %103 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %90
  %108 = load i32, i32* @AC_LEDMode, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %90
  %112 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %113 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 3
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @AC_LEDModeBit1, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %111
  %122 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %123 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @AC_LEDSpeed, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %121
  %132 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %133 = load i32, i32* @STGE_AsicCtrl, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @CSR_WRITE_4(%struct.stge_softc* %132, i32 %133, i32 %134)
  %136 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %137 = load i32, i32* @STGE_PhySet, align 4
  %138 = call i32 @CSR_READ_1(%struct.stge_softc* %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* @PS_MemLenb9b, align 4
  %140 = load i32, i32* @PS_MemLen, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @PS_NonCompdet, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %6, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %6, align 4
  %147 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %148 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 112
  %151 = ashr i32 %150, 4
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %155 = load i32, i32* @STGE_PhySet, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @CSR_WRITE_1(%struct.stge_softc* %154, i32 %155, i32 %156)
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_READ_1(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.stge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
