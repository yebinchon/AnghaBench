; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_start_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.uhso_softc* }
%struct.uhso_softc = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@UHSO_IF_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"local unit %d\0A\00", align 1
@UHSO_MUX_ENDPT_INTR = common dso_local global i64 0, align 8
@UHSO_CTRL_WRITE = common dso_local global i64 0, align 8
@UHSO_IF_BULK = common dso_local global i32 0, align 4
@UHSO_BULK_ENDPT_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @uhso_ucom_start_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_ucom_start_write(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.uhso_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %4 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %4, i32 0, i32 1
  %6 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  store %struct.uhso_softc* %6, %struct.uhso_softc** %3, align 8
  %7 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @UHSO_IFACE_USB_TYPE(i32 %9)
  %11 = load i32, i32* @UHSO_IF_MUX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %20 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @UHSO_MUX_ENDPT_INTR, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usbd_transfer_start(i32 %24)
  %26 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @UHSO_CTRL_WRITE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = call i32 @usbd_xfer_set_priv(i32 %37, %struct.TYPE_2__* %44)
  %46 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @UHSO_CTRL_WRITE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usbd_transfer_start(i32 %57)
  br label %76

59:                                               ; preds = %1
  %60 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %61 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @UHSO_IFACE_USB_TYPE(i32 %62)
  %64 = load i32, i32* @UHSO_IF_BULK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %69 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @UHSO_BULK_ENDPT_WRITE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usbd_transfer_start(i32 %73)
  br label %75

75:                                               ; preds = %67, %59
  br label %76

76:                                               ; preds = %75, %14
  ret void
}

declare dso_local i32 @UHSO_IFACE_USB_TYPE(i32) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i64) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @usbd_xfer_set_priv(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
