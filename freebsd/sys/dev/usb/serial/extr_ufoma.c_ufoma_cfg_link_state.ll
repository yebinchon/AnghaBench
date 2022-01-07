; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_cfg_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufoma_softc = type { i32, i32, i32*, i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_INTERFACE = common dso_local global i32 0, align 4
@UMCPC_SET_LINK = common dso_local global i32 0, align 4
@UMCPC_CM_MOBILE_ACM = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"NO response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufoma_softc*)* @ufoma_cfg_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_cfg_link_state(%struct.ufoma_softc* %0) #0 {
  %2 = alloca %struct.ufoma_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  %4 = alloca i64, align 8
  store %struct.ufoma_softc* %0, %struct.ufoma_softc** %2, align 8
  %5 = load i32, i32* @UT_WRITE_VENDOR_INTERFACE, align 4
  %6 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @UMCPC_SET_LINK, align 4
  %8 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UMCPC_CM_MOBILE_ACM, align 4
  %12 = call i32 @USETW(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @USETW(i32 %14, i32 %17)
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @USETW(i32 %20, i32 %25)
  %27 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %30, i32 0, i32 3
  %32 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ucom_cfg_do_request(i32 %29, i32* %31, %struct.usb_device_request* %3, i32* %34, i32 0, i32 1000)
  %36 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %36, i32 0, i32 1
  %38 = load %struct.ufoma_softc*, %struct.ufoma_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %38, i32 0, i32 0
  %40 = load i32, i32* @hz, align 4
  %41 = call i64 @cv_timedwait(i32* %37, i32* %39, i32 %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i64 @cv_timedwait(i32*, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
