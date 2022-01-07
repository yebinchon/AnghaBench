; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_check_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_check_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i64, i32, i32* }
%struct.xhci_trb = type { i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Received command event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_softc*, %struct.xhci_trb*)* @xhci_check_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_check_command(%struct.xhci_softc* %0, %struct.xhci_trb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_softc*, align 8
  %5 = alloca %struct.xhci_trb*, align 8
  store %struct.xhci_softc* %0, %struct.xhci_softc** %4, align 8
  store %struct.xhci_trb* %1, %struct.xhci_trb** %5, align 8
  %6 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %7 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.xhci_trb*, %struct.xhci_trb** %5, align 8
  %10 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.xhci_trb*, %struct.xhci_trb** %5, align 8
  %16 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.xhci_trb*, %struct.xhci_trb** %5, align 8
  %23 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load %struct.xhci_softc*, %struct.xhci_softc** %4, align 8
  %30 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %29, i32 0, i32 1
  %31 = call i32 @cv_signal(i32* %30)
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
