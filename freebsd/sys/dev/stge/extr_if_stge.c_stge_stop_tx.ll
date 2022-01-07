; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_stop_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32 }

@STGE_MACCtrl = common dso_local global i32 0, align 4
@MC_MASK = common dso_local global i32 0, align 4
@MC_TxEnabled = common dso_local global i32 0, align 4
@MC_TxDisable = common dso_local global i32 0, align 4
@STGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Stopping Tx MAC timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_stop_tx(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %5 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %6 = load i32, i32* @STGE_MACCtrl, align 4
  %7 = call i32 @CSR_READ_4(%struct.stge_softc* %5, i32 %6)
  %8 = load i32, i32* @MC_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MC_TxEnabled, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %51

15:                                               ; preds = %1
  %16 = load i32, i32* @MC_TxDisable, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %20 = load i32, i32* @STGE_MACCtrl, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CSR_WRITE_4(%struct.stge_softc* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @STGE_TIMEOUT, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %40, %15
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = call i32 @DELAY(i32 10)
  %29 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %30 = load i32, i32* @STGE_MACCtrl, align 4
  %31 = call i32 @CSR_READ_4(%struct.stge_softc* %29, i32 %30)
  %32 = load i32, i32* @MC_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @MC_TxEnabled, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  br label %24

43:                                               ; preds = %38, %24
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %48 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %14, %46, %43
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
