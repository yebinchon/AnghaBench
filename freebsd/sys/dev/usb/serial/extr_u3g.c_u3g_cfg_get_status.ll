; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_cfg_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_cfg_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.u3g_softc* }
%struct.u3g_softc = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i32*, i32*)* @u3g_cfg_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u3g_cfg_get_status(%struct.ucom_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.u3g_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 1
  %10 = load %struct.u3g_softc*, %struct.u3g_softc** %9, align 8
  store %struct.u3g_softc* %10, %struct.u3g_softc** %7, align 8
  %11 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %12 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %21 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
