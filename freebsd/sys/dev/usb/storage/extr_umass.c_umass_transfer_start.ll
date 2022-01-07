; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_transfer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_transfer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i64, i64* }

@UDMASS_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"transfer index = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umass_softc*, i64)* @umass_transfer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_transfer_start(%struct.umass_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.umass_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.umass_softc* %0, %struct.umass_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %6 = load i32, i32* @UDMASS_GEN, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @DPRINTF(%struct.umass_softc* %5, i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %10 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %19 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %21 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @usbd_transfer_start(i64 %25)
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %29 = call i32 @umass_cancel_ccb(%struct.umass_softc* %28)
  br label %30

30:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, i64) #1

declare dso_local i32 @usbd_transfer_start(i64) #1

declare dso_local i32 @umass_cancel_ccb(%struct.umass_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
