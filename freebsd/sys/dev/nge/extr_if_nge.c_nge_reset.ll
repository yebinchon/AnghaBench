; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32 }

@NGE_CSR = common dso_local global i32 0, align 4
@NGE_CSR_RESET = common dso_local global i32 0, align 4
@NGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reset never completed\0A\00", align 1
@NGE_CLKRUN = common dso_local global i32 0, align 4
@NGE_CLKRUN_PMESTS = common dso_local global i32 0, align 4
@NGE_WOLCSR = common dso_local global i32 0, align 4
@NGE_CFG = common dso_local global i32 0, align 4
@NGE_CFG_64BIT_ADDR_ENB = common dso_local global i32 0, align 4
@NGE_CFG_64BIT_DATA_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nge_softc*)* @nge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nge_reset(%struct.nge_softc* %0) #0 {
  %2 = alloca %struct.nge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nge_softc* %0, %struct.nge_softc** %2, align 8
  %5 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %6 = load i32, i32* @NGE_CSR, align 4
  %7 = load i32, i32* @NGE_CSR_RESET, align 4
  %8 = call i32 @NGE_SETBIT(%struct.nge_softc* %5, i32 %6, i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NGE_TIMEOUT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %15 = load i32, i32* @NGE_CSR, align 4
  %16 = call i32 @CSR_READ_4(%struct.nge_softc* %14, i32 %15)
  %17 = load i32, i32* @NGE_CSR_RESET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  %22 = call i32 @DELAY(i32 1)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %9

26:                                               ; preds = %20, %9
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NGE_TIMEOUT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %26
  %36 = call i32 @DELAY(i32 1000)
  %37 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %38 = load i32, i32* @NGE_CLKRUN, align 4
  %39 = load i32, i32* @NGE_CLKRUN_PMESTS, align 4
  %40 = call i32 @CSR_WRITE_4(%struct.nge_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %42 = load i32, i32* @NGE_CLKRUN, align 4
  %43 = call i32 @CSR_WRITE_4(%struct.nge_softc* %41, i32 %42, i32 0)
  %44 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %45 = load i32, i32* @NGE_WOLCSR, align 4
  %46 = call i32 @CSR_WRITE_4(%struct.nge_softc* %44, i32 %45, i32 0)
  %47 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %48 = load i32, i32* @NGE_CFG, align 4
  %49 = call i32 @CSR_READ_4(%struct.nge_softc* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @NGE_CFG_64BIT_ADDR_ENB, align 4
  %51 = load i32, i32* @NGE_CFG_64BIT_DATA_ENB, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %57 = load i32, i32* @NGE_CFG, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @CSR_WRITE_4(%struct.nge_softc* %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @NGE_SETBIT(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.nge_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.nge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
