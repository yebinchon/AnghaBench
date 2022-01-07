; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"resetting the HC\0A\00", align 1
@UHCI_INTR = common dso_local global i32 0, align 4
@UHCI_CMD_GRESET = common dso_local global i32 0, align 4
@USB_BUS_RESET_DELAY = common dso_local global i32 0, align 4
@UHCI_CMD_HCRESET = common dso_local global i32 0, align 4
@UHCI_RESET_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@UHCI_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"controller did not reset\0A\00", align 1
@UHCI_STS = common dso_local global i32 0, align 4
@UHCI_STS_HCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"controller did not stop\0A\00", align 1
@UHCI_FRNUM = common dso_local global i32 0, align 4
@UHCI_SOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uhci_reset(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_11__* %5, i32 %6)
  %8 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = load i32, i32* @UHCI_INTR, align 4
  %11 = call i32 @UWRITE2(%struct.TYPE_10__* %9, i32 %10, i32 0)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = load i32, i32* @UHCI_CMD_GRESET, align 4
  %14 = call i32 @UHCICMD(%struct.TYPE_10__* %12, i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* @USB_BUS_RESET_DELAY, align 4
  %19 = call i32 @USB_MS_TO_TICKS(i32 %18)
  %20 = call i32 @usb_pause_mtx(i32* %17, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = load i32, i32* @UHCI_CMD_HCRESET, align 4
  %23 = call i32 @UHCICMD(%struct.TYPE_10__* %21, i32 %22)
  %24 = load i32, i32* @UHCI_RESET_TIMEOUT, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %43, %1
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* @hz, align 4
  %34 = sdiv i32 %33, 1000
  %35 = call i32 @usb_pause_mtx(i32* %32, i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = load i32, i32* @UHCI_CMD, align 4
  %38 = call i32 @UREAD2(%struct.TYPE_10__* %36, i32 %37)
  %39 = load i32, i32* @UHCI_CMD_HCRESET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %50

43:                                               ; preds = %29
  br label %25

44:                                               ; preds = %25
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %42
  store i32 10, i32* %3, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* @hz, align 4
  %60 = sdiv i32 %59, 1000
  %61 = call i32 @usb_pause_mtx(i32* %58, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = load i32, i32* @UHCI_STS, align 4
  %64 = call i32 @UREAD2(%struct.TYPE_10__* %62, i32 %63)
  %65 = load i32, i32* @UHCI_STS_HCH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %76

69:                                               ; preds = %55
  br label %51

70:                                               ; preds = %51
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = load i32, i32* @UHCI_FRNUM, align 4
  %79 = call i32 @UWRITE2(%struct.TYPE_10__* %77, i32 %78, i32 0)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = load i32, i32* @UHCI_SOF, align 4
  %82 = call i32 @UWRITE1(%struct.TYPE_10__* %80, i32 %81, i32 64)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_11__* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = call i32 @usb_callout_drain(i32* %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32 @USB_BUS_LOCK(%struct.TYPE_11__* %90)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @UWRITE2(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @UHCICMD(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

declare dso_local i32 @UREAD2(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @UWRITE1(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
