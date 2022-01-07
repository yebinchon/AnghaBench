; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.pci_xhci_softc* }
%struct.pci_xhci_softc = type { i64, i64, i64, i32 }

@XHCI_CAPLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"pci_xhci: read invalid offset %ld\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)* @pci_xhci_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_xhci_read(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.vmctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_devinst*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_xhci_softc*, align 8
  %14 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.pci_devinst*, %struct.pci_devinst** %9, align 8
  %16 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %15, i32 0, i32 0
  %17 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %16, align 8
  store %struct.pci_xhci_softc* %17, %struct.pci_xhci_softc** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %23 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %22, i32 0, i32 3
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @XHCI_CAPLEN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @pci_xhci_hostcap_read(%struct.pci_xhci_softc* %29, i64 %30)
  store i32 %31, i32* %14, align 4
  br label %81

32:                                               ; preds = %6
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %35 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @pci_xhci_hostop_read(%struct.pci_xhci_softc* %39, i64 %40)
  store i32 %41, i32* %14, align 4
  br label %80

42:                                               ; preds = %32
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %45 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @pci_xhci_dbregs_read(%struct.pci_xhci_softc* %49, i64 %50)
  store i32 %51, i32* %14, align 4
  br label %79

52:                                               ; preds = %42
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %55 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @pci_xhci_rtsregs_read(%struct.pci_xhci_softc* %59, i64 %60)
  store i32 %61, i32* %14, align 4
  br label %78

62:                                               ; preds = %52
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %65 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 128
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @pci_xhci_xecp_read(%struct.pci_xhci_softc* %70, i64 %71)
  store i32 %72, i32* %14, align 4
  br label %77

73:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  %74 = load i64, i64* %11, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @WPRINTF(i8* %75)
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79, %38
  br label %81

81:                                               ; preds = %80, %28
  %82 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %13, align 8
  %83 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %82, i32 0, i32 3
  %84 = call i32 @pthread_mutex_unlock(i32* %83)
  %85 = load i32, i32* %12, align 4
  switch i32 %85, label %94 [
    i32 1, label %86
    i32 2, label %89
    i32 4, label %92
  ]

86:                                               ; preds = %81
  %87 = load i32, i32* %14, align 4
  %88 = and i32 %87, 255
  store i32 %88, i32* %14, align 4
  br label %94

89:                                               ; preds = %81
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %90, 65535
  store i32 %91, i32* %14, align 4
  br label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %81, %92, %89, %86
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  ret i64 %96
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pci_xhci_hostcap_read(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @pci_xhci_hostop_read(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @pci_xhci_dbregs_read(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @pci_xhci_rtsregs_read(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @pci_xhci_xecp_read(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
