; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_channel_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_channel_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { i64, i32 }
%struct.musbotg_td = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ep_no=%d\0A\00", align 1
@MUSB2_DEVICE_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musbotg_softc*, %struct.musbotg_td*)* @musbotg_channel_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_channel_free(%struct.musbotg_softc* %0, %struct.musbotg_td* %1) #0 {
  %3 = alloca %struct.musbotg_softc*, align 8
  %4 = alloca %struct.musbotg_td*, align 8
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %3, align 8
  store %struct.musbotg_td* %1, %struct.musbotg_td** %4, align 8
  %5 = load %struct.musbotg_td*, %struct.musbotg_td** %4, align 8
  %6 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %10 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MUSB2_DEVICE_MODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.musbotg_td*, %struct.musbotg_td** %4, align 8
  %17 = icmp eq %struct.musbotg_td* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %42

19:                                               ; preds = %15
  %20 = load %struct.musbotg_td*, %struct.musbotg_td** %4, align 8
  %21 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %42

25:                                               ; preds = %19
  %26 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %27 = load %struct.musbotg_td*, %struct.musbotg_td** %4, align 8
  %28 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @musbotg_ep_int_set(%struct.musbotg_softc* %26, i32 %29, i32 0)
  %31 = load %struct.musbotg_td*, %struct.musbotg_td** %4, align 8
  %32 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %37 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.musbotg_td*, %struct.musbotg_td** %4, align 8
  %41 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 4
  br label %42

42:                                               ; preds = %25, %24, %18, %14
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @musbotg_ep_int_set(%struct.musbotg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
