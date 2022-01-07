; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_wakeup_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_wakeup_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MUSB2_REG_POWER = common dso_local global i32 0, align 4
@MUSB2_MASK_SUSPMODE = common dso_local global i32 0, align 4
@MUSB2_MASK_RESUME = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musbotg_softc*)* @musbotg_wakeup_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_wakeup_host(%struct.musbotg_softc* %0) #0 {
  %2 = alloca %struct.musbotg_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %2, align 8
  %4 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %5 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %12 = load i32, i32* @MUSB2_REG_POWER, align 4
  %13 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @MUSB2_MASK_SUSPMODE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @MUSB2_MASK_RESUME, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %22 = load i32, i32* @MUSB2_REG_POWER, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %26 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* @hz, align 4
  %29 = sdiv i32 %28, 50
  %30 = call i32 @usb_pause_mtx(i32* %27, i32 %29)
  %31 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %32 = load i32, i32* @MUSB2_REG_POWER, align 4
  %33 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @MUSB2_MASK_RESUME, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %39 = load i32, i32* @MUSB2_REG_POWER, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %43 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
