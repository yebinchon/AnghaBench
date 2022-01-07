; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_host_isoc_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_host_isoc_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.saf1761_otg_softc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"xfer=%p next=%d nframes=%d\0A\00", align 1
@SOTG_FRINDEX = common dso_local global i32 0, align 4
@SOTG_FRINDEX_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"start next=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @saf1761_otg_host_isoc_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_host_isoc_enter(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.saf1761_otg_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32 %10)
  store %struct.saf1761_otg_softc* %11, %struct.saf1761_otg_softc** %3, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %19 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %12, i32 %17, i32 %20)
  %22 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %23 = load i32, i32* @SOTG_FRINDEX, align 4
  %24 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %22, i32 %23)
  %25 = load i32, i32* @SOTG_FRINDEX_MASK, align 4
  %26 = and i32 %24, %25
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %28, %33
  %35 = load i32, i32* @SOTG_FRINDEX_MASK, align 4
  %36 = ashr i32 %35, 3
  %37 = and i32 %34, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %47 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %44, %1
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 3
  %53 = load i32, i32* @SOTG_FRINDEX_MASK, align 4
  %54 = ashr i32 %53, 3
  %55 = and i32 %52, %54
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %61 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %65 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @DPRINTFN(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %50, %44
  %71 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %72 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* @SOTG_FRINDEX_MASK, align 4
  %79 = ashr i32 %78, 3
  %80 = and i32 %77, %79
  store i32 %80, i32* %4, align 4
  %81 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %82 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @usb_isoc_time_expand(i32* %82, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %89 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %87, %91
  %93 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %94 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %96 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %99 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %97
  store i32 %103, i32* %101, align 4
  %104 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %105 = call i32 @saf1761_otg_setup_standard_chain(%struct.usb_xfer* %104)
  ret void
}

declare dso_local %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i64 @usb_isoc_time_expand(i32*, i32) #1

declare dso_local i32 @saf1761_otg_setup_standard_chain(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
