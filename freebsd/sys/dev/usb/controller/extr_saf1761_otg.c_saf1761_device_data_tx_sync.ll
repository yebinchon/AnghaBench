; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_device_data_tx_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_device_data_tx_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32 }
%struct.saf1761_otg_td = type { i32 }

@SOTG_EP_INDEX = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_EP0SETUP = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH_FILLED_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Faking complete\0A\00", align 1
@SOTG_EP_INDEX_ENDP_INDEX_SHIFT = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_device_data_tx_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_device_data_tx_sync(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  %7 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %8 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %13 = load i32, i32* @SOTG_EP_INDEX, align 4
  %14 = load i32, i32* @SOTG_EP_INDEX_EP0SETUP, align 4
  %15 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %17 = load i32, i32* @SOTG_BUF_LENGTH, align 4
  %18 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SOTG_BUF_LENGTH_FILLED_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %28 = load i32, i32* @SOTG_EP_INDEX, align 4
  %29 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %30 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SOTG_EP_INDEX_ENDP_INDEX_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @SOTG_EP_INDEX_DIR_IN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %27, i32 %28, i32 %35)
  %37 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %38 = load i32, i32* @SOTG_BUF_LENGTH, align 4
  %39 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SOTG_BUF_LENGTH_FILLED_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %57

45:                                               ; preds = %26
  %46 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %47 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 255
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %52 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %53 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @saf1761_otg_set_address(%struct.saf1761_otg_softc* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %45
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %44, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @saf1761_otg_set_address(%struct.saf1761_otg_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
