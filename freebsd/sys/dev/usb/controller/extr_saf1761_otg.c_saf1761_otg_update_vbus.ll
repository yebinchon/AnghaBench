; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_update_vbus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_update_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@SOTG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"STATUS=0x%04x\0A\00", align 1
@SOTG_STATUS_VBUS_VLD = common dso_local global i32 0, align 4
@SOTG_STATUS_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saf1761_otg_softc*)* @saf1761_otg_update_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_update_vbus(%struct.saf1761_otg_softc* %0) #0 {
  %2 = alloca %struct.saf1761_otg_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %2, align 8
  %4 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %5 = load i32, i32* @SOTG_STATUS, align 4
  %6 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SOTG_STATUS_VBUS_VLD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SOTG_STATUS_ID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %20 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %26 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %29 = call i32 @saf1761_otg_root_intr(%struct.saf1761_otg_softc* %28)
  br label %30

30:                                               ; preds = %24, %18
  br label %56

31:                                               ; preds = %13, %1
  %32 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %33 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %39 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %42 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %45 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %48 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %51 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %54 = call i32 @saf1761_otg_root_intr(%struct.saf1761_otg_softc* %53)
  br label %55

55:                                               ; preds = %37, %31
  br label %56

56:                                               ; preds = %55, %30
  ret void
}

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @saf1761_otg_root_intr(%struct.saf1761_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
