; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_start_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32 }

@STGE_MACCtrl = common dso_local global i32 0, align 4
@MC_MASK = common dso_local global i32 0, align 4
@MC_TxEnabled = common dso_local global i32 0, align 4
@MC_TxEnable = common dso_local global i32 0, align 4
@STGE_TxDMAPollPeriod = common dso_local global i32 0, align 4
@STGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Starting Tx MAC timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_start_tx(%struct.stge_softc* %0) #0 {
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
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  %16 = load i32, i32* @MC_TxEnable, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %20 = load i32, i32* @STGE_MACCtrl, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CSR_WRITE_4(%struct.stge_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %24 = load i32, i32* @STGE_TxDMAPollPeriod, align 4
  %25 = call i32 @CSR_WRITE_1(%struct.stge_softc* %23, i32 %24, i32 127)
  %26 = load i32, i32* @STGE_TIMEOUT, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %43, %15
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = call i32 @DELAY(i32 10)
  %32 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %33 = load i32, i32* @STGE_MACCtrl, align 4
  %34 = call i32 @CSR_READ_4(%struct.stge_softc* %32, i32 %33)
  %35 = load i32, i32* @MC_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MC_TxEnabled, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %4, align 4
  br label %27

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %51 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %14, %49, %46
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
