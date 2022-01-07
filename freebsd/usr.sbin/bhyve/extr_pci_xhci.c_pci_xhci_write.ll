; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.pci_xhci_softc* }
%struct.pci_xhci_softc = type { i64, i64, i64, i32 }

@XHCI_CAPLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"pci_xhci: write RO-CAPs offset %ld\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"pci_xhci: write invalid offset %ld\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)* @pci_xhci_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_write(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.pci_xhci_softc*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %16 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %17 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %16, i32 0, i32 0
  %18 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %17, align 8
  store %struct.pci_xhci_softc* %18, %struct.pci_xhci_softc** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %15, align 8
  %24 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %23, i32 0, i32 3
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @XHCI_CAPLEN, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load i64, i64* %12, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @WPRINTF(i8* %31)
  br label %73

33:                                               ; preds = %7
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %15, align 8
  %36 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %15, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @pci_xhci_hostop_write(%struct.pci_xhci_softc* %40, i64 %41, i64 %42)
  br label %72

44:                                               ; preds = %33
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %15, align 8
  %47 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %15, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @pci_xhci_dbregs_write(%struct.pci_xhci_softc* %51, i64 %52, i64 %53)
  br label %71

55:                                               ; preds = %44
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %15, align 8
  %58 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %15, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i32 @pci_xhci_rtsregs_write(%struct.pci_xhci_softc* %62, i64 %63, i64 %64)
  br label %70

66:                                               ; preds = %55
  %67 = load i64, i64* %12, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @WPRINTF(i8* %68)
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %39
  br label %73

73:                                               ; preds = %72, %29
  %74 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %15, align 8
  %75 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %74, i32 0, i32 3
  %76 = call i32 @pthread_mutex_unlock(i32* %75)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @pci_xhci_hostop_write(%struct.pci_xhci_softc*, i64, i64) #1

declare dso_local i32 @pci_xhci_dbregs_write(%struct.pci_xhci_softc*, i64, i64) #1

declare dso_local i32 @pci_xhci_rtsregs_write(%struct.pci_xhci_softc*, i64, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
