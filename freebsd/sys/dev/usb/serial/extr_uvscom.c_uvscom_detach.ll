; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvscom.c_uvscom_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvscom.c_uvscom_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvscom_softc = type { i64*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@UVSCOM_INTR_DT_RD = common dso_local global i64 0, align 8
@UVSCOM_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uvscom_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvscom_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvscom_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.uvscom_softc* @device_get_softc(i32 %4)
  store %struct.uvscom_softc* %5, %struct.uvscom_softc** %3, align 8
  %6 = load %struct.uvscom_softc*, %struct.uvscom_softc** %3, align 8
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.uvscom_softc* %6)
  %8 = load %struct.uvscom_softc*, %struct.uvscom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @UVSCOM_INTR_DT_RD, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.uvscom_softc*, %struct.uvscom_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @UVSCOM_INTR_DT_RD, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @usbd_transfer_stop(i64 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.uvscom_softc*, %struct.uvscom_softc** %3, align 8
  %25 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %24, i32 0, i32 2
  %26 = load %struct.uvscom_softc*, %struct.uvscom_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %26, i32 0, i32 1
  %28 = call i32 @ucom_detach(i32* %25, i32* %27)
  %29 = load %struct.uvscom_softc*, %struct.uvscom_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* @UVSCOM_N_TRANSFER, align 4
  %33 = call i32 @usbd_transfer_unsetup(i64* %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @device_claim_softc(i32 %34)
  %36 = load %struct.uvscom_softc*, %struct.uvscom_softc** %3, align 8
  %37 = call i32 @uvscom_free_softc(%struct.uvscom_softc* %36)
  ret i32 0
}

declare dso_local %struct.uvscom_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.uvscom_softc*) #1

declare dso_local i32 @usbd_transfer_stop(i64) #1

declare dso_local i32 @ucom_detach(i32*, i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i64*, i32) #1

declare dso_local i32 @device_claim_softc(i32) #1

declare dso_local i32 @uvscom_free_softc(%struct.uvscom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
