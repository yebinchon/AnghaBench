; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32 }

@VR_ISR = common dso_local global i32 0, align 4
@VR_INTRS = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@VR_IMR = common dso_local global i32 0, align 4
@taskqueue_fast = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vr_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vr_softc*
  store %struct.vr_softc* %7, %struct.vr_softc** %4, align 8
  %8 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %9 = load i32, i32* @VR_ISR, align 4
  %10 = call i32 @CSR_READ_2(%struct.vr_softc* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 65535
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VR_INTRS, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %13, %1
  %22 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %16
  %24 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %25 = load i32, i32* @VR_IMR, align 4
  %26 = call i32 @CSR_WRITE_2(%struct.vr_softc* %24, i32 %25, i32 0)
  %27 = load i32, i32* @taskqueue_fast, align 4
  %28 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %29 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %28, i32 0, i32 0
  %30 = call i32 @taskqueue_enqueue(i32 %27, i32* %29)
  %31 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %21
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @CSR_READ_2(%struct.vr_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
