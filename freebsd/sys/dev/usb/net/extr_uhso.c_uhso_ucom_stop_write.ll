; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_stop_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_stop_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.uhso_softc* }
%struct.uhso_softc = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@UHSO_IF_MUX = common dso_local global i32 0, align 4
@UHSO_CTRL_WRITE = common dso_local global i64 0, align 8
@UHSO_IF_BULK = common dso_local global i32 0, align 4
@UHSO_BULK_ENDPT_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @uhso_ucom_stop_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_ucom_stop_write(%struct.ucom_softc* %0) #0 {
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
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @UHSO_CTRL_WRITE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usbd_transfer_stop(i32 %26)
  br label %45

28:                                               ; preds = %1
  %29 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @UHSO_IFACE_USB_TYPE(i32 %31)
  %33 = load i32, i32* @UHSO_IF_BULK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %38 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @UHSO_BULK_ENDPT_WRITE, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usbd_transfer_stop(i32 %42)
  br label %44

44:                                               ; preds = %36, %28
  br label %45

45:                                               ; preds = %44, %14
  ret void
}

declare dso_local i32 @UHSO_IFACE_USB_TYPE(i32) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
