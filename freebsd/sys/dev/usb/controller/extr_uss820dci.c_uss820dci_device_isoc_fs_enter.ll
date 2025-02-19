; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_device_isoc_fs_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_device_isoc_fs_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.uss820dci_softc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"xfer=%p next=%d nframes=%d\0A\00", align 1
@USS820_SOFL = common dso_local global i32 0, align 4
@USS820_SOFL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"start next=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @uss820dci_device_isoc_fs_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_device_isoc_fs_enter(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.uss820dci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32 %10)
  store %struct.uss820dci_softc* %11, %struct.uss820dci_softc** %3, align 8
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
  %22 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %23 = load i32, i32* @USS820_SOFL, align 4
  %24 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %25, %30
  %32 = load i32, i32* @USS820_SOFL_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %35 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %43 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40, %1
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 3
  %49 = load i32, i32* @USS820_SOFL_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %52 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %56 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %60 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @DPRINTFN(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %46, %40
  %66 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %67 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* @USS820_SOFL_MASK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %4, align 4
  %75 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %76 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @usb_isoc_time_expand(i32* %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %83 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %88 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %90 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %93 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %91
  store i32 %97, i32* %95, align 4
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %99 = call i32 @uss820dci_setup_standard_chain(%struct.usb_xfer* %98)
  ret void
}

declare dso_local %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i64 @usb_isoc_time_expand(i32*, i32) #1

declare dso_local i32 @uss820dci_setup_standard_chain(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
