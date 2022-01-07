; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_calib.c_r92c_lc_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_calib.c_r92c_lc_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_OFDM1_LSTF = common dso_local global i64 0, align 8
@R92C_RF_AC = common dso_local global i32 0, align 4
@R92C_RF_AC_MODE = common dso_local global i32 0, align 4
@R92C_RF_AC_MODE_STANDBY = common dso_local global i32 0, align 4
@R92C_TXPAUSE = common dso_local global i64 0, align 8
@R92C_TX_QUEUE_ALL = common dso_local global i32 0, align 4
@R92C_RF_CHNLBW = common dso_local global i32 0, align 4
@R92C_RF_CHNLBW_LCSTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_lc_calib(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = load i64, i64* @R92C_OFDM1_LSTF, align 8
  %8 = add nsw i64 %7, 3
  %9 = call i32 @rtwn_read_1(%struct.rtwn_softc* %6, i64 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 112
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = load i64, i64* @R92C_OFDM1_LSTF, align 8
  %16 = add nsw i64 %15, 3
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, -113
  %19 = call i32 @rtwn_write_1(%struct.rtwn_softc* %14, i64 %16, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %45, %13
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @R92C_RF_AC, align 4
  %30 = call i32 @rtwn_rf_read(%struct.rtwn_softc* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @R92C_RF_AC, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @R92C_RF_AC_MODE, align 4
  %42 = load i32, i32* @R92C_RF_AC_MODE_STANDBY, align 4
  %43 = call i32 @RW(i32 %40, i32 %41, i32 %42)
  %44 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %34, i32 %35, i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %20

48:                                               ; preds = %20
  br label %54

49:                                               ; preds = %1
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %51 = load i64, i64* @R92C_TXPAUSE, align 8
  %52 = load i32, i32* @R92C_TX_QUEUE_ALL, align 4
  %53 = call i32 @rtwn_write_1(%struct.rtwn_softc* %50, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %48
  %55 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %56 = load i32, i32* @R92C_RF_CHNLBW, align 4
  %57 = load i32, i32* @R92C_RF_CHNLBW_LCSTART, align 4
  %58 = call i32 @rtwn_rf_setbits(%struct.rtwn_softc* %55, i32 0, i32 %56, i32 0, i32 %57)
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %60 = call i32 @rtwn_delay(%struct.rtwn_softc* %59, i32 100000)
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 112
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %54
  %65 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %66 = load i64, i64* @R92C_OFDM1_LSTF, align 8
  %67 = add nsw i64 %66, 3
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @rtwn_write_1(%struct.rtwn_softc* %65, i64 %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %85, %64
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %73 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @R92C_RF_AC, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %77, i32 %78, i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %70

88:                                               ; preds = %70
  br label %93

89:                                               ; preds = %54
  %90 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %91 = load i64, i64* @R92C_TXPAUSE, align 8
  %92 = call i32 @rtwn_write_1(%struct.rtwn_softc* %90, i64 %91, i32 0)
  br label %93

93:                                               ; preds = %89, %88
  ret void
}

declare dso_local i32 @rtwn_read_1(%struct.rtwn_softc*, i64) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_rf_read(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_rf_write(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @RW(i32, i32, i32) #1

declare dso_local i32 @rtwn_rf_setbits(%struct.rtwn_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
