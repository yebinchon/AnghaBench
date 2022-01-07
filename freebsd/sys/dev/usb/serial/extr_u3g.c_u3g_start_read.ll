; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_start_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_start_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.u3g_softc* }
%struct.u3g_softc = type { i32** }

@U3G_INTR = common dso_local global i64 0, align 8
@U3G_BULK_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @u3g_start_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u3g_start_read(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.u3g_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %4 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %4, i32 0, i32 1
  %6 = load %struct.u3g_softc*, %struct.u3g_softc** %5, align 8
  store %struct.u3g_softc* %6, %struct.u3g_softc** %3, align 8
  %7 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %8 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %7, i32 0, i32 0
  %9 = load i32**, i32*** %8, align 8
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32*, i32** %9, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @U3G_INTR, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usbd_transfer_start(i32 %17)
  %19 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %20 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @U3G_BULK_RD, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usbd_transfer_start(i32 %29)
  ret void
}

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
