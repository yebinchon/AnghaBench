; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_any_key_pressed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_any_key_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@UKBD_NKEYCODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ukbd_softc*)* @ukbd_any_key_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ukbd_any_key_pressed(%struct.ukbd_softc* %0) #0 {
  %2 = alloca %struct.ukbd_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @UKBD_NKEYCODE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %9
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %5

22:                                               ; preds = %5
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = sext i32 %26 to i64
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
