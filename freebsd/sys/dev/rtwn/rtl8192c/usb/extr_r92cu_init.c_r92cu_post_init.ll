; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_init.c_r92cu_post_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_init.c_r92cu_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i64, i64, %struct.r92c_softc* }
%struct.r92c_softc = type { i32, i32 }

@R92C_POWER_STATUS = common dso_local global i32 0, align 4
@RTWN_FW_LOADED = common dso_local global i32 0, align 4
@RTWN_RATECTL_FW = common dso_local global i64 0, align 8
@RTWN_RATECTL_NET80211 = common dso_local global i64 0, align 8
@r92c_handle_c2h_report = common dso_local global i32 0, align 4
@RTWN_RATECTL_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92cu_post_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = load i32, i32* @R92C_POWER_STATUS, align 4
  %6 = call i32 @rtwn_write_4(%struct.rtwn_softc* %4, i32 %5, i32 5)
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = call i32 @r92c_iq_calib(%struct.rtwn_softc* %7)
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = call i32 @r92c_lc_calib(%struct.rtwn_softc* %9)
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %12 = call i32 @rtwn_write_1(%struct.rtwn_softc* %11, i32 65088, i32 224)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %14 = call i32 @rtwn_write_1(%struct.rtwn_softc* %13, i32 65089, i32 141)
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %16 = call i32 @rtwn_write_1(%struct.rtwn_softc* %15, i32 65090, i32 128)
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %18 = call i32 @r92c_pa_bias_init(%struct.rtwn_softc* %17)
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %20 = call i32 @rtwn_write_1(%struct.rtwn_softc* %19, i32 21, i32 233)
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RTWN_FW_LOADED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %1
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %29 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %28, i32 0, i32 3
  %30 = load %struct.r92c_softc*, %struct.r92c_softc** %29, align 8
  store %struct.r92c_softc* %30, %struct.r92c_softc** %3, align 8
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %32 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RTWN_RATECTL_FW, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i64, i64* @RTWN_RATECTL_NET80211, align 8
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %39 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %46

40:                                               ; preds = %27
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %45 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %36
  %47 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %48 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %47, i32 0, i32 1
  %49 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %50 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @r92c_handle_c2h_report, align 4
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %54 = call i32 @callout_reset(i32* %48, i32 %51, i32 %52, %struct.rtwn_softc* %53)
  br label %59

55:                                               ; preds = %1
  %56 = load i64, i64* @RTWN_RATECTL_NONE, align 8
  %57 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %58 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %46
  ret void
}

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @r92c_iq_calib(%struct.rtwn_softc*) #1

declare dso_local i32 @r92c_lc_calib(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @r92c_pa_bias_init(%struct.rtwn_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
