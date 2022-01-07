; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usie_softc = type { i64, i32*, i32, i32, i32, i32* }

@USIE_IF_N_XFER = common dso_local global i32 0, align 4
@USIE_UCOM_MAX = common dso_local global i64 0, align 8
@USIE_UC_N_XFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usie_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usie_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usie_softc*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.usie_softc* @device_get_softc(i32 %5)
  store %struct.usie_softc* %6, %struct.usie_softc** %3, align 8
  %7 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %8 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %13 = call i32 @usie_if_stop(%struct.usie_softc* %12)
  %14 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %15 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @USIE_IF_N_XFER, align 4
  %18 = call i32 @usbd_transfer_unsetup(i32 %16, i32 %17)
  %19 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %20 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @bpfdetach(i32* %21)
  %23 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %24 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @if_detach(i32* %25)
  %27 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %28 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @if_free(i32* %29)
  %31 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %32 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %11, %1
  %34 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %35 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %40 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %39, i32 0, i32 4
  %41 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %42 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ucom_detach(i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %47 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @USIE_IF_N_XFER, align 4
  %50 = call i32 @usbd_transfer_unsetup(i32 %48, i32 %49)
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %64, %45
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @USIE_UCOM_MAX, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %57 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @USIE_UC_N_XFER, align 4
  %63 = call i32 @usbd_transfer_unsetup(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %4, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %4, align 8
  br label %51

67:                                               ; preds = %51
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @device_claim_softc(i32 %68)
  %70 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %71 = call i32 @usie_free_softc(%struct.usie_softc* %70)
  ret i32 0
}

declare dso_local %struct.usie_softc* @device_get_softc(i32) #1

declare dso_local i32 @usie_if_stop(%struct.usie_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @bpfdetach(i32*) #1

declare dso_local i32 @if_detach(i32*) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @ucom_detach(i32*, i32) #1

declare dso_local i32 @device_claim_softc(i32) #1

declare dso_local i32 @usie_free_softc(%struct.usie_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
