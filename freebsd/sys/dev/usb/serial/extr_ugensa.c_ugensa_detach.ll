; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ugensa.c_ugensa_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ugensa.c_ugensa_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ugensa_softc = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@UGENSA_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ugensa_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugensa_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ugensa_softc*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ugensa_softc* @device_get_softc(i32 %5)
  store %struct.ugensa_softc* %6, %struct.ugensa_softc** %3, align 8
  %7 = load %struct.ugensa_softc*, %struct.ugensa_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ugensa_softc, %struct.ugensa_softc* %7, i32 0, i32 3
  %9 = load %struct.ugensa_softc*, %struct.ugensa_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ugensa_softc, %struct.ugensa_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ucom_detach(i32* %8, i32 %11)
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.ugensa_softc*, %struct.ugensa_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ugensa_softc, %struct.ugensa_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.ugensa_softc*, %struct.ugensa_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ugensa_softc, %struct.ugensa_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UGENSA_N_TRANSFER, align 4
  %28 = call i32 @usbd_transfer_unsetup(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @device_claim_softc(i32 %33)
  %35 = load %struct.ugensa_softc*, %struct.ugensa_softc** %3, align 8
  %36 = call i32 @ugensa_free_softc(%struct.ugensa_softc* %35)
  ret i32 0
}

declare dso_local %struct.ugensa_softc* @device_get_softc(i32) #1

declare dso_local i32 @ucom_detach(i32*, i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @device_claim_softc(i32) #1

declare dso_local i32 @ugensa_free_softc(%struct.ugensa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
