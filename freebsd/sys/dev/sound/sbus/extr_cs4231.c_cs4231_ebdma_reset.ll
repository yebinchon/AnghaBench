; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_ebdma_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_ebdma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32, i32 }

@EBDMA_DCSR = common dso_local global i32 0, align 4
@EBDCSR_INTEN = common dso_local global i32 0, align 4
@EBDCSR_NEXTEN = common dso_local global i32 0, align 4
@EBDCSR_RESET = common dso_local global i32 0, align 4
@CS_TIMEOUT = common dso_local global i32 0, align 4
@EBDCSR_DRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"timeout waiting for playback DMA reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"timeout waiting for capture DMA reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*)* @cs4231_ebdma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_ebdma_reset(%struct.cs4231_softc* %0) #0 {
  %2 = alloca %struct.cs4231_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cs4231_softc* %0, %struct.cs4231_softc** %2, align 8
  %4 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %5 = load i32, i32* @EBDMA_DCSR, align 4
  %6 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %7 = load i32, i32* @EBDMA_DCSR, align 4
  %8 = call i32 @EBDMA_P_READ(%struct.cs4231_softc* %6, i32 %7)
  %9 = load i32, i32* @EBDCSR_INTEN, align 4
  %10 = load i32, i32* @EBDCSR_NEXTEN, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %4, i32 %5, i32 %13)
  %15 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %16 = load i32, i32* @EBDMA_DCSR, align 4
  %17 = load i32, i32* @EBDCSR_RESET, align 4
  %18 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @CS_TIMEOUT, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %34, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %25 = load i32, i32* @EBDMA_DCSR, align 4
  %26 = call i32 @EBDMA_P_READ(%struct.cs4231_softc* %24, i32 %25)
  %27 = load i32, i32* @EBDCSR_DRAIN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %20
  %31 = phi i1 [ false, %20 ], [ %29, %23 ]
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = call i32 @DELAY(i32 1)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4
  br label %20

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %42 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %47 = load i32, i32* @EBDMA_DCSR, align 4
  %48 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %49 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %46, i32 %47, i32 %50)
  %52 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %53 = load i32, i32* @EBDMA_DCSR, align 4
  %54 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %55 = load i32, i32* @EBDMA_DCSR, align 4
  %56 = call i32 @EBDMA_C_READ(%struct.cs4231_softc* %54, i32 %55)
  %57 = load i32, i32* @EBDCSR_INTEN, align 4
  %58 = load i32, i32* @EBDCSR_NEXTEN, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  %62 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %52, i32 %53, i32 %61)
  %63 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %64 = load i32, i32* @EBDMA_DCSR, align 4
  %65 = load i32, i32* @EBDCSR_RESET, align 4
  %66 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %63, i32 %64, i32 %65)
  %67 = load i32, i32* @CS_TIMEOUT, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %82, %45
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %73 = load i32, i32* @EBDMA_DCSR, align 4
  %74 = call i32 @EBDMA_C_READ(%struct.cs4231_softc* %72, i32 %73)
  %75 = load i32, i32* @EBDCSR_DRAIN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %71, %68
  %79 = phi i1 [ false, %68 ], [ %77, %71 ]
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = call i32 @DELAY(i32 1)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %3, align 4
  br label %68

85:                                               ; preds = %78
  %86 = load i32, i32* %3, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %90 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %95 = load i32, i32* @EBDMA_DCSR, align 4
  %96 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %97 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %94, i32 %95, i32 %98)
  ret void
}

declare dso_local i32 @EBDMA_P_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @EBDMA_P_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @EBDMA_C_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @EBDMA_C_READ(%struct.cs4231_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
