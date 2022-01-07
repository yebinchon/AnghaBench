; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_xecp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_xecp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32, i32, i64 }

@XHCI_ID_PROTOCOLS = common dso_local global i32 0, align 4
@XHCI_MAX_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pci_xhci: xecp invalid offset 0x%lx\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"pci_xhci: xecp read offset 0x%lx -> 0x%x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, i32)* @pci_xhci_xecp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_xecp_read(%struct.pci_xhci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %7 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %40 [
    i32 0, label %14
    i32 4, label %17
    i32 8, label %18
    i32 12, label %26
    i32 16, label %27
    i32 20, label %30
    i32 24, label %31
    i32 28, label %39
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @XHCI_ID_PROTOCOLS, align 4
  %16 = or i32 33555456, %15
  store i32 %16, i32* %5, align 4
  br label %45

17:                                               ; preds = %2
  store i32 541217621, i32* %5, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* @XHCI_MAX_DEVS, align 4
  %20 = sdiv i32 %19, 2
  %21 = shl i32 %20, 8
  %22 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %23 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %21, %24
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %2
  br label %45

27:                                               ; preds = %2
  %28 = load i32, i32* @XHCI_ID_PROTOCOLS, align 4
  %29 = or i32 50331648, %28
  store i32 %29, i32* %5, align 4
  br label %45

30:                                               ; preds = %2
  store i32 541217621, i32* %5, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load i32, i32* @XHCI_MAX_DEVS, align 4
  %33 = sdiv i32 %32, 2
  %34 = shl i32 %33, 8
  %35 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %2
  br label %45

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @DPRINTF(i8* %43)
  br label %45

45:                                               ; preds = %40, %39, %31, %30, %27, %26, %18, %17, %14
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DPRINTF(i8* %49)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
