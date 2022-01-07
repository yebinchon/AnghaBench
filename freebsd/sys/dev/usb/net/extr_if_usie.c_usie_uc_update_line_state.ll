; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_uc_update_line_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_uc_update_line_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.usie_softc* }
%struct.usie_softc = type { i32*, i32*** }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@USIE_UC_STATUS = common dso_local global i64 0, align 8
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@USIE_LINK_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sc_uc_ifnum=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i32)* @usie_uc_update_line_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_uc_update_line_state(%struct.ucom_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usie_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 1
  %9 = load %struct.usie_softc*, %struct.usie_softc** %8, align 8
  store %struct.usie_softc* %9, %struct.usie_softc** %5, align 8
  %10 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %11 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %10, i32 0, i32 1
  %12 = load i32***, i32**** %11, align 8
  %13 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32**, i32*** %12, i64 %15
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* @USIE_UC_STATUS, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %57

23:                                               ; preds = %2
  %24 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @USIE_LINK_STATE, align 4
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @USETW(i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %35 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @USETW(i32 %33, i32 %41)
  %43 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @USETW(i32 %44, i32 0)
  %46 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %47 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %56 = call i32 @usie_do_request(%struct.usie_softc* %55, %struct.usb_device_request* %6, i32* null)
  br label %57

57:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usie_do_request(%struct.usie_softc*, %struct.usb_device_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
