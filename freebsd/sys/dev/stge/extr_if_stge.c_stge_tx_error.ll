; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_tx_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_tx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i64, i32 }

@STGE_TxStatus = common dso_local global i32 0, align 4
@TS_TxComplete = common dso_local global i32 0, align 4
@TS_TxUnderrun = common dso_local global i32 0, align 4
@STGE_MAXERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Tx underrun, resetting...\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"too many errors; not reporting any more\0A\00", align 1
@TS_MaxCollisions = common dso_local global i32 0, align 4
@TS_LateCollision = common dso_local global i32 0, align 4
@STGE_MACCtrl = common dso_local global i32 0, align 4
@MC_MASK = common dso_local global i32 0, align 4
@MC_TxEnable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stge_softc*)* @stge_tx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_tx_error(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %7 = load i32, i32* @STGE_TxStatus, align 4
  %8 = call i32 @CSR_READ_4(%struct.stge_softc* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TS_TxComplete, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %62

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TS_TxUnderrun, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %21 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load i64, i64* @STGE_MAXERR, align 8
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %28 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %33 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STGE_MAXERR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %31
  store i32 -1, i32* %4, align 4
  br label %62

43:                                               ; preds = %14
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @TS_MaxCollisions, align 4
  %46 = load i32, i32* @TS_LateCollision, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %52 = load i32, i32* @STGE_MACCtrl, align 4
  %53 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %54 = load i32, i32* @STGE_MACCtrl, align 4
  %55 = call i32 @CSR_READ_4(%struct.stge_softc* %53, i32 %54)
  %56 = load i32, i32* @MC_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @MC_TxEnable, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @CSR_WRITE_4(%struct.stge_softc* %51, i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %50, %43
  br label %5

62:                                               ; preds = %42, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
