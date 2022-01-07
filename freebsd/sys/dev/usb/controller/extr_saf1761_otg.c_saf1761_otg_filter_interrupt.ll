; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_filter_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_filter_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32*, i32*, i32*, i64, i32 }

@FILTER_HANDLED = common dso_local global i32 0, align 4
@SOTG_HCINTERRUPT = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT = common dso_local global i32 0, align 4
@SAF1761_DCINTERRUPT_THREAD_IRQ = common dso_local global i32 0, align 4
@SOTG_ATL_PTD_DONE_PTD = common dso_local global i32 0, align 4
@SOTG_INT_PTD_DONE_PTD = common dso_local global i32 0, align 4
@SOTG_ISO_PTD_DONE_PTD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HCINTERRUPT=0x%08x DCINTERRUPT=0x%08x\0A\00", align 1
@SOTG_DCINTERRUPT_IEPSOF = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saf1761_otg_filter_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.saf1761_otg_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.saf1761_otg_softc*
  store %struct.saf1761_otg_softc* %8, %struct.saf1761_otg_softc** %3, align 8
  %9 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %11 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %10, i32 0, i32 4
  %12 = call i32 @USB_BUS_SPIN_LOCK(i32* %11)
  %13 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %14 = load i32, i32* @SOTG_HCINTERRUPT, align 4
  %15 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %17 = load i32, i32* @SOTG_HCINTERRUPT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %21 = load i32, i32* @SOTG_DCINTERRUPT, align 4
  %22 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %24 = load i32, i32* @SOTG_DCINTERRUPT, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SAF1761_DCINTERRUPT_THREAD_IRQ, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %23, i32 %24, i32 %28)
  %30 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %31 = load i32, i32* @SOTG_ATL_PTD_DONE_PTD, align 4
  %32 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %30, i32 %31)
  %33 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %34 = load i32, i32* @SOTG_INT_PTD_DONE_PTD, align 4
  %35 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %33, i32 %34)
  %36 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %37 = load i32, i32* @SOTG_ISO_PTD_DONE_PTD, align 4
  %38 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SOTG_DCINTERRUPT_IEPSOF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %128

46:                                               ; preds = %1
  %47 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %48 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %53 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %51, %56
  %58 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %59 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %57, %62
  %64 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %65 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %63, %68
  %70 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %71 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  %76 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %77 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %124

83:                                               ; preds = %46
  %84 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %84, i32* %4, align 4
  %85 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %86 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %91 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %89, i32* %93, align 4
  %94 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %95 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 0, i32* %97, align 4
  %98 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %99 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %104 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %102, i32* %106, align 4
  %107 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %108 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 0, i32* %110, align 4
  %111 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %112 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %117 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %121 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 0, i32* %123, align 4
  br label %127

124:                                              ; preds = %46
  %125 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %126 = call i32 @saf1761_otg_enable_psof(%struct.saf1761_otg_softc* %125, i32 0)
  br label %127

127:                                              ; preds = %124, %83
  br label %128

128:                                              ; preds = %127, %1
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @SAF1761_DCINTERRUPT_THREAD_IRQ, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %128
  %136 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %137 = call i32 @saf1761_otg_interrupt_poll_locked(%struct.saf1761_otg_softc* %136)
  %138 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %139 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %135
  %145 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %146 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %145, i32 0, i32 4
  %147 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %146)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @saf1761_otg_enable_psof(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @saf1761_otg_interrupt_poll_locked(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
