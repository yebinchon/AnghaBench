; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_wakeup_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_wakeup_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SOTG_MODE = common dso_local global i32 0, align 4
@SOTG_MODE_SNDRSU = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_softc*)* @saf1761_otg_wakeup_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_wakeup_peer(%struct.saf1761_otg_softc* %0) #0 {
  %2 = alloca %struct.saf1761_otg_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %2, align 8
  %4 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %5 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %13 = load i32, i32* @SOTG_MODE, align 4
  %14 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %16 = load i32, i32* @SOTG_MODE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SOTG_MODE_SNDRSU, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %15, i32 %16, i32 %19)
  %21 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %22 = load i32, i32* @SOTG_MODE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SOTG_MODE_SNDRSU, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %21, i32 %22, i32 %26)
  %28 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %29 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* @hz, align 4
  %32 = sdiv i32 %31, 125
  %33 = call i32 @usb_pause_mtx(i32* %30, i32 %32)
  br label %34

34:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
