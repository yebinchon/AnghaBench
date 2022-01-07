; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_stop_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32 }

@JME_TXCSR = common dso_local global i32 0, align 4
@TXCSR_TX_ENB = common dso_local global i32 0, align 4
@JME_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"stopping transmitter timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_stop_tx(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %5 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %6 = load i32, i32* @JME_TXCSR, align 4
  %7 = call i32 @CSR_READ_4(%struct.jme_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TXCSR_TX_ENB, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load i32, i32* @TXCSR_TX_ENB, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %19 = load i32, i32* @JME_TXCSR, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @CSR_WRITE_4(%struct.jme_softc* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @JME_TIMEOUT, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %36, %13
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = call i32 @DELAY(i32 1)
  %28 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %29 = load i32, i32* @JME_TXCSR, align 4
  %30 = call i32 @CSR_READ_4(%struct.jme_softc* %28, i32 %29)
  %31 = load i32, i32* @TXCSR_TX_ENB, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %39

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %23

39:                                               ; preds = %34, %23
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %44 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %12, %42, %39
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
