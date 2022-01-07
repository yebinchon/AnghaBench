; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_stop_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_stop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.uhso_softc* }
%struct.uhso_softc = type { i32**, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32** }

@UHSO_IF_MUX = common dso_local global i32 0, align 4
@UHSO_CTRL_READ = common dso_local global i64 0, align 8
@UHSO_IF_BULK = common dso_local global i32 0, align 4
@UHSO_BULK_ENDPT_READ = common dso_local global i64 0, align 8
@UHSO_BULK_ENDPT_INTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @uhso_ucom_stop_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_ucom_stop_read(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.uhso_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %4 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %4, i32 0, i32 1
  %6 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  store %struct.uhso_softc* %6, %struct.uhso_softc** %3, align 8
  %7 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @UHSO_IFACE_USB_TYPE(i32 %9)
  %11 = load i32, i32* @UHSO_IF_MUX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* @UHSO_CTRL_READ, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @usbd_transfer_stop(i32* %34)
  br label %74

36:                                               ; preds = %1
  %37 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %38 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @UHSO_IFACE_USB_TYPE(i32 %39)
  %41 = load i32, i32* @UHSO_IF_BULK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %36
  %45 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %46 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %51 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @UHSO_BULK_ENDPT_READ, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @usbd_transfer_start(i32* %55)
  %57 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %58 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* @UHSO_BULK_ENDPT_INTR, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %44
  %65 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %66 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* @UHSO_BULK_ENDPT_INTR, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @usbd_transfer_stop(i32* %70)
  br label %72

72:                                               ; preds = %64, %44
  br label %73

73:                                               ; preds = %72, %36
  br label %74

74:                                               ; preds = %73, %14
  ret void
}

declare dso_local i32 @UHSO_IFACE_USB_TYPE(i32) #1

declare dso_local i32 @usbd_transfer_stop(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
