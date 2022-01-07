; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SOTG_DCINTERRUPT = common dso_local global i32 0, align 4
@SAF1761_DCINTERRUPT_THREAD_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"DCINTERRUPT=0x%08x SOF=0x%08x FRINDEX=0x%08x\0A\00", align 1
@SOTG_FRAME_NUM = common dso_local global i32 0, align 4
@SOTG_FRINDEX = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_IEVBUS = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_IEBRST = common dso_local global i32 0, align 4
@SOTG_UNLOCK_DEVICE = common dso_local global i32 0, align 4
@SOTG_UNLOCK_DEVICE_CODE = common dso_local global i32 0, align 4
@SOTG_ADDRESS = common dso_local global i32 0, align 4
@SOTG_ADDRESS_ENABLE = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_IERESM = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_IESUSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saf1761_otg_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.saf1761_otg_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.saf1761_otg_softc*
  store %struct.saf1761_otg_softc* %6, %struct.saf1761_otg_softc** %3, align 8
  %7 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %8 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %7, i32 0, i32 1
  %9 = call i32 @USB_BUS_LOCK(i32* %8)
  %10 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %11 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %10, i32 0, i32 1
  %12 = call i32 @USB_BUS_SPIN_LOCK(i32* %11)
  %13 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %14 = load i32, i32* @SOTG_DCINTERRUPT, align 4
  %15 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %13, i32 %14)
  %16 = load i32, i32* @SAF1761_DCINTERRUPT_THREAD_IRQ, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %19 = load i32, i32* @SOTG_DCINTERRUPT, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %24 = load i32, i32* @SOTG_FRAME_NUM, align 4
  %25 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %23, i32 %24)
  %26 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %27 = load i32, i32* @SOTG_FRINDEX, align 4
  %28 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %26, i32 %27)
  %29 = call i32 @DPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SOTG_DCINTERRUPT_IEVBUS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %36 = call i32 @saf1761_otg_update_vbus(%struct.saf1761_otg_softc* %35)
  br label %37

37:                                               ; preds = %34, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SOTG_DCINTERRUPT_IEBRST, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %44 = load i32, i32* @SOTG_UNLOCK_DEVICE, align 4
  %45 = load i32, i32* @SOTG_UNLOCK_DEVICE_CODE, align 4
  %46 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %48 = load i32, i32* @SOTG_ADDRESS, align 4
  %49 = load i32, i32* @SOTG_ADDRESS_ENABLE, align 4
  %50 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %52 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %55 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %58 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 0, i32* %59, align 4
  %60 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %61 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %64 = call i32 @saf1761_otg_wait_suspend(%struct.saf1761_otg_softc* %63, i32 1)
  %65 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %66 = call i32 @saf1761_otg_root_intr(%struct.saf1761_otg_softc* %65)
  br label %67

67:                                               ; preds = %42, %37
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SOTG_DCINTERRUPT_IERESM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %74 = load i32, i32* @SOTG_UNLOCK_DEVICE, align 4
  %75 = load i32, i32* @SOTG_UNLOCK_DEVICE_CODE, align 4
  %76 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %78 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %84 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  %86 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %87 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 1, i32* %88, align 4
  %89 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %90 = call i32 @saf1761_otg_wait_suspend(%struct.saf1761_otg_softc* %89, i32 1)
  %91 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %92 = call i32 @saf1761_otg_root_intr(%struct.saf1761_otg_softc* %91)
  br label %93

93:                                               ; preds = %82, %72
  br label %118

94:                                               ; preds = %67
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @SOTG_DCINTERRUPT_IESUSP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %101 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %99
  %106 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %107 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %110 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i32 1, i32* %111, align 4
  %112 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %113 = call i32 @saf1761_otg_wait_suspend(%struct.saf1761_otg_softc* %112, i32 0)
  %114 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %115 = call i32 @saf1761_otg_root_intr(%struct.saf1761_otg_softc* %114)
  br label %116

116:                                              ; preds = %105, %99
  br label %117

117:                                              ; preds = %116, %94
  br label %118

118:                                              ; preds = %117, %93
  %119 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %120 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %125 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %127 = call i32 @saf1761_otg_interrupt_complete_locked(%struct.saf1761_otg_softc* %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %130 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %129, i32 0, i32 1
  %131 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %130)
  %132 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %133 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %132, i32 0, i32 1
  %134 = call i32 @USB_BUS_UNLOCK(i32* %133)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32) #1

declare dso_local i32 @saf1761_otg_update_vbus(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @saf1761_otg_wait_suspend(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @saf1761_otg_root_intr(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @saf1761_otg_interrupt_complete_locked(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
