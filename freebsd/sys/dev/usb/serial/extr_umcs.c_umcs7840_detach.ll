; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umcs7840_softc = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@UMCS7840_N_TRANSFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umcs7840_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umcs7840_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.umcs7840_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.umcs7840_softc* @device_get_softc(i32 %5)
  store %struct.umcs7840_softc* %6, %struct.umcs7840_softc** %3, align 8
  %7 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %8 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %7, i32 0, i32 4
  %9 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %10 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @ucom_detach(i32* %8, %struct.TYPE_4__* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %16 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %21 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %24 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @UMCS7840_N_TRANSFERS, align 4
  %35 = call i32 @usbd_transfer_unsetup(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %41 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %40, i32 0, i32 1
  %42 = call i32 @usbd_transfer_unsetup(i32* %41, i32 1)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @device_claim_softc(i32 %43)
  %45 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %46 = call i32 @umcs7840_free_softc(%struct.umcs7840_softc* %45)
  ret i32 0
}

declare dso_local %struct.umcs7840_softc* @device_get_softc(i32) #1

declare dso_local i32 @ucom_detach(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

declare dso_local i32 @device_claim_softc(i32) #1

declare dso_local i32 @umcs7840_free_softc(%struct.umcs7840_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
