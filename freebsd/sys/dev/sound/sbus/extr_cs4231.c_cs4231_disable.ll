; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i64, i32, i32, i32 }

@CS_PIN_CONTROL = common dso_local global i32 0, align 4
@INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@CS4231_SBUS = common dso_local global i32 0, align 4
@APC_CSR = common dso_local global i32 0, align 4
@APC_CSR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*)* @cs4231_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_disable(%struct.cs4231_softc* %0) #0 {
  %2 = alloca %struct.cs4231_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cs4231_softc* %0, %struct.cs4231_softc** %2, align 8
  %4 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %5 = call i32 @CS4231_LOCK_ASSERT(%struct.cs4231_softc* %4)
  %6 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %7 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %13 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %15 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %14)
  %16 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %17 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %16, i32 0, i32 3
  %18 = call i32 @cs4231_halt(i32* %17)
  %19 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %20 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %19, i32 0, i32 2
  %21 = call i32 @cs4231_halt(i32* %20)
  %22 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %23 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %22)
  %24 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %25 = load i32, i32* @CS_PIN_CONTROL, align 4
  %26 = call i32 @cs4231_read(%struct.cs4231_softc* %24, i32 %25)
  %27 = load i32, i32* @INTERRUPT_ENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %3, align 4
  %30 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %31 = load i32, i32* @CS_PIN_CONTROL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @cs4231_write(%struct.cs4231_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %35 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CS4231_SBUS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %11
  %41 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %42 = load i32, i32* @APC_CSR, align 4
  %43 = load i32, i32* @APC_CSR_RESET, align 4
  %44 = call i32 @APC_WRITE(%struct.cs4231_softc* %41, i32 %42, i32 %43)
  %45 = call i32 @DELAY(i32 10)
  %46 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %47 = load i32, i32* @APC_CSR, align 4
  %48 = call i32 @APC_WRITE(%struct.cs4231_softc* %46, i32 %47, i32 0)
  %49 = call i32 @DELAY(i32 10)
  br label %53

50:                                               ; preds = %11
  %51 = load %struct.cs4231_softc*, %struct.cs4231_softc** %2, align 8
  %52 = call i32 @cs4231_ebdma_reset(%struct.cs4231_softc* %51)
  br label %53

53:                                               ; preds = %10, %50, %40
  ret void
}

declare dso_local i32 @CS4231_LOCK_ASSERT(%struct.cs4231_softc*) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @cs4231_halt(i32*) #1

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @cs4231_write(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @APC_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cs4231_ebdma_reset(%struct.cs4231_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
