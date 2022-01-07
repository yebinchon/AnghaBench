; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_post_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i64, i64 }

@R92C_QUEUE_CTRL = common dso_local global i32 0, align 4
@R12A_EARLY_MODE_CONTROL = common dso_local global i64 0, align 8
@R12A_SDIO_CTRL = common dso_local global i64 0, align 8
@R92C_ACLK_MON = common dso_local global i64 0, align 8
@R92C_USB_HRPWM = common dso_local global i64 0, align 8
@RTWN_FW_LOADED = common dso_local global i32 0, align 4
@RTWN_RATECTL_FW = common dso_local global i64 0, align 8
@RTWN_RATECTL_NET80211 = common dso_local global i64 0, align 8
@RTWN_RATECTL_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12au_post_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R92C_QUEUE_CTRL, align 4
  %5 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %3, i32 %4, i32 8, i32 0)
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = load i64, i64* @R12A_EARLY_MODE_CONTROL, align 8
  %8 = add nsw i64 %7, 3
  %9 = call i32 @rtwn_write_1(%struct.rtwn_softc* %6, i64 %8, i32 1)
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = load i64, i64* @R12A_SDIO_CTRL, align 8
  %12 = call i32 @rtwn_write_1(%struct.rtwn_softc* %10, i64 %11, i32 0)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %14 = load i64, i64* @R92C_ACLK_MON, align 8
  %15 = call i32 @rtwn_write_1(%struct.rtwn_softc* %13, i64 %14, i32 0)
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %17 = load i64, i64* @R92C_USB_HRPWM, align 8
  %18 = call i32 @rtwn_write_1(%struct.rtwn_softc* %16, i64 %17, i32 0)
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RTWN_FW_LOADED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RTWN_RATECTL_FW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @RTWN_RATECTL_NET80211, align 8
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %34 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %37 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %40 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %31
  br label %46

42:                                               ; preds = %1
  %43 = load i64, i64* @RTWN_RATECTL_NONE, align 8
  %44 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %45 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
