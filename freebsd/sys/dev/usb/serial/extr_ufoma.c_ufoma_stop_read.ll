; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_stop_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_stop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.ufoma_softc* }
%struct.ufoma_softc = type { i32*, i32*, i64 }

@UFOMA_CTRL_ENDPT_INTR = common dso_local global i64 0, align 8
@UFOMA_CTRL_ENDPT_READ = common dso_local global i64 0, align 8
@UFOMA_BULK_ENDPT_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @ufoma_stop_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_stop_read(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.ufoma_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %4 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %4, i32 0, i32 0
  %6 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  store %struct.ufoma_softc* %6, %struct.ufoma_softc** %3, align 8
  %7 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @UFOMA_CTRL_ENDPT_INTR, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usbd_transfer_stop(i32 %12)
  %14 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @UFOMA_CTRL_ENDPT_READ, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usbd_transfer_stop(i32 %24)
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.ufoma_softc*, %struct.ufoma_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @UFOMA_BULK_ENDPT_READ, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usbd_transfer_stop(i32 %32)
  br label %34

34:                                               ; preds = %26, %18
  ret void
}

declare dso_local i32 @usbd_transfer_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
