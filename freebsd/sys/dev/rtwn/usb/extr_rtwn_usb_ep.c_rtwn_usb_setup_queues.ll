; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_ep.c_rtwn_usb_setup_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_ep.c_rtwn_usb_setup_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_usb_softc = type { i32, %struct.rtwn_softc }
%struct.rtwn_softc = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_usb_softc*)* @rtwn_usb_setup_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_usb_setup_queues(%struct.rtwn_usb_softc* %0) #0 {
  %2 = alloca %struct.rtwn_usb_softc*, align 8
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtwn_usb_softc* %0, %struct.rtwn_usb_softc** %2, align 8
  %9 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %9, i32 0, i32 1
  store %struct.rtwn_softc* %10, %struct.rtwn_softc** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %11 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %2, align 8
  %12 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 4, label %14
    i32 3, label %14
    i32 2, label %15
  ]

14:                                               ; preds = %1, %1
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %1, %14
  store i32 1, i32* %4, align 4
  br label %16

16:                                               ; preds = %1, %15
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 1, %18
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %26 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %35 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = load i32, i32* %6, align 4
  %39 = srem i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %44 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %17
  %48 = load i32, i32* %7, align 4
  br label %50

49:                                               ; preds = %17
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %53 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %62 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
