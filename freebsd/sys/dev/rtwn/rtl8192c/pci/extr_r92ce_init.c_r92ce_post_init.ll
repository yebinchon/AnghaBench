; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_init.c_r92ce_post_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_init.c_r92ce_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i64, i64, %struct.r92c_softc* }
%struct.r92c_softc = type { i32, i32 }

@R92C_FWHW_TXQ_CTRL = common dso_local global i32 0, align 4
@R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW = common dso_local global i32 0, align 4
@R92C_BCN_MAX_ERR = common dso_local global i32 0, align 4
@RTWN_FW_LOADED = common dso_local global i32 0, align 4
@RTWN_RATECTL_FW = common dso_local global i64 0, align 8
@RTWN_RATECTL_NET80211 = common dso_local global i64 0, align 8
@r92c_handle_c2h_report = common dso_local global i32 0, align 4
@RTWN_RATECTL_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92ce_post_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = load i32, i32* @R92C_FWHW_TXQ_CTRL, align 4
  %6 = load i32, i32* @R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW, align 4
  %7 = or i32 7936, %6
  %8 = call i32 @rtwn_write_2(%struct.rtwn_softc* %4, i32 %5, i32 %7)
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = load i32, i32* @R92C_BCN_MAX_ERR, align 4
  %11 = call i32 @rtwn_write_1(%struct.rtwn_softc* %9, i32 %10, i32 255)
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %13 = call i32 @r92ce_iq_calib(%struct.rtwn_softc* %12)
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = call i32 @r92c_lc_calib(%struct.rtwn_softc* %14)
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %17 = call i32 @r92c_pa_bias_init(%struct.rtwn_softc* %16)
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %19 = call i32 @rtwn_write_1(%struct.rtwn_softc* %18, i32 21, i32 233)
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RTWN_FW_LOADED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %1
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 3
  %29 = load %struct.r92c_softc*, %struct.r92c_softc** %28, align 8
  store %struct.r92c_softc* %29, %struct.r92c_softc** %3, align 8
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %31 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RTWN_RATECTL_FW, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i64, i64* @RTWN_RATECTL_NET80211, align 8
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %38 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  br label %45

39:                                               ; preds = %26
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %41 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %44 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %35
  %46 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %47 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %46, i32 0, i32 1
  %48 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %49 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @r92c_handle_c2h_report, align 4
  %52 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %53 = call i32 @callout_reset(i32* %47, i32 %50, i32 %51, %struct.rtwn_softc* %52)
  br label %58

54:                                               ; preds = %1
  %55 = load i64, i64* @RTWN_RATECTL_NONE, align 8
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %57 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %45
  ret void
}

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @r92ce_iq_calib(%struct.rtwn_softc*) #1

declare dso_local i32 @r92c_lc_calib(%struct.rtwn_softc*) #1

declare dso_local i32 @r92c_pa_bias_init(%struct.rtwn_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
