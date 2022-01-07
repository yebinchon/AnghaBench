; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_vbus_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_vbus_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"vbus = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musbotg_vbus_interrupt(%struct.musbotg_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.musbotg_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %8 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %7, i32 0, i32 0
  %9 = call i32 @USB_BUS_LOCK(i32* %8)
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %14 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %20 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %23 = call i32 @musbotg_root_intr(%struct.musbotg_softc* %22)
  br label %24

24:                                               ; preds = %18, %12
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %27 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %33 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %36 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %39 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %42 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %45 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %48 = call i32 @musbotg_root_intr(%struct.musbotg_softc* %47)
  br label %49

49:                                               ; preds = %31, %25
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %52 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %51, i32 0, i32 0
  %53 = call i32 @USB_BUS_UNLOCK(i32* %52)
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i64) #1

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @musbotg_root_intr(%struct.musbotg_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
