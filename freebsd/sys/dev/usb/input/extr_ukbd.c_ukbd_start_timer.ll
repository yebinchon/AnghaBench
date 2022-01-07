; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_start_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SBT_1MS = common dso_local global i32 0, align 4
@ukbd_timeout = common dso_local global i32 0, align 4
@C_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ukbd_softc*)* @ukbd_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ukbd_start_timer(%struct.ukbd_softc* %0) #0 {
  %2 = alloca %struct.ukbd_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %2, align 8
  %6 = call i64 (...) @sbinuptime()
  store i64 %6, i64* %4, align 8
  %7 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @SBT_1MS, align 4
  %20 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %18
  %40 = load i64, i64* %3, align 8
  %41 = ashr i64 %40, 7
  %42 = load i32, i32* @SBT_1MS, align 4
  %43 = mul nsw i32 %42, 10
  %44 = call i64 @qmin(i64 %41, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %45, i32 0, i32 2
  %47 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @ukbd_timeout, align 4
  %52 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %53 = load i32, i32* @C_ABSOLUTE, align 4
  %54 = call i32 @usb_callout_reset_sbt(i32* %46, i64 %49, i64 %50, i32 %51, %struct.ukbd_softc* %52, i32 %53)
  ret void
}

declare dso_local i64 @sbinuptime(...) #1

declare dso_local i64 @qmin(i64, i32) #1

declare dso_local i32 @usb_callout_reset_sbt(i32*, i64, i64, i32, %struct.ukbd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
