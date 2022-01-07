; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_root_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_root_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32*, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@oper = common dso_local global i32 0, align 4
@XHCI_PS_CSC = common dso_local global i32 0, align 4
@XHCI_PS_PEC = common dso_local global i32 0, align 4
@XHCI_PS_OCC = common dso_local global i32 0, align 4
@XHCI_PS_WRC = common dso_local global i32 0, align 4
@XHCI_PS_PRC = common dso_local global i32 0, align 4
@XHCI_PS_PLC = common dso_local global i32 0, align 4
@XHCI_PS_CEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"port %d changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_softc*)* @xhci_root_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_root_intr(%struct.xhci_softc* %0) #0 {
  %2 = alloca %struct.xhci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.xhci_softc* %0, %struct.xhci_softc** %2, align 8
  %4 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %4, i32 0, i32 2
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @USB_BUS_LOCK_ASSERT(i32* %5, i32 %6)
  %8 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %9 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @memset(i32* %10, i32 0, i32 8)
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %55, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %15 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %20 = load i32, i32* @oper, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @XHCI_PORTSC(i32 %21)
  %23 = call i32 @XREAD4(%struct.xhci_softc* %19, i32 %20, i32 %22)
  %24 = load i32, i32* @XHCI_PS_CSC, align 4
  %25 = load i32, i32* @XHCI_PS_PEC, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @XHCI_PS_OCC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @XHCI_PS_WRC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @XHCI_PS_PRC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @XHCI_PS_PLC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @XHCI_PS_CEC, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %23, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %18
  %40 = load i32, i32* %3, align 4
  %41 = srem i32 %40, 8
  %42 = shl i32 1, %41
  %43 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %44 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sdiv i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %42
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %39, %18
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %12

58:                                               ; preds = %12
  %59 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %60 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %59, i32 0, i32 2
  %61 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %62 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @uhub_root_intr(i32* %60, i32* %63, i32 8)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @XREAD4(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @XHCI_PORTSC(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @uhub_root_intr(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
