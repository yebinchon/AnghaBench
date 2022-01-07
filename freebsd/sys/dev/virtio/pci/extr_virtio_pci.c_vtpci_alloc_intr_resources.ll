; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_intr_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_intr_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, i32, %struct.vtpci_interrupt*, %struct.vtpci_interrupt }
%struct.vtpci_interrupt = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@VTPCI_FLAG_LEGACY = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@VTPCI_FLAG_MSI = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtpci_softc*)* @vtpci_alloc_intr_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_alloc_intr_resources(%struct.vtpci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca %struct.vtpci_interrupt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @RF_ACTIVE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VTPCI_FLAG_LEGACY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @RF_SHAREABLE, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %22

21:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %23, i32 0, i32 3
  store %struct.vtpci_interrupt* %24, %struct.vtpci_interrupt** %4, align 8
  %25 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %29 = call i32 @vtpci_alloc_interrupt(%struct.vtpci_softc* %25, i32 %26, i32 %27, %struct.vtpci_interrupt* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %22
  %33 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VTPCI_FLAG_LEGACY, align 4
  %37 = load i32, i32* @VTPCI_FLAG_MSI, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %22
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %2, align 4
  br label %91

43:                                               ; preds = %32
  %44 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @M_DEVBUF, align 4
  %53 = load i32, i32* @M_NOWAIT, align 4
  %54 = load i32, i32* @M_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.vtpci_interrupt* @malloc(i32 %51, i32 %52, i32 %55)
  %57 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %58 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %57, i32 0, i32 2
  store %struct.vtpci_interrupt* %56, %struct.vtpci_interrupt** %58, align 8
  store %struct.vtpci_interrupt* %56, %struct.vtpci_interrupt** %4, align 8
  %59 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %60 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %59, i32 0, i32 2
  %61 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %60, align 8
  %62 = icmp eq %struct.vtpci_interrupt* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %2, align 4
  br label %91

65:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %83, %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %77 = call i32 @vtpci_alloc_interrupt(%struct.vtpci_softc* %73, i32 %74, i32 %75, %struct.vtpci_interrupt* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %91

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %89 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %88, i32 1
  store %struct.vtpci_interrupt* %89, %struct.vtpci_interrupt** %4, align 8
  br label %68

90:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %80, %63, %41
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @vtpci_alloc_interrupt(%struct.vtpci_softc*, i32, i32, %struct.vtpci_interrupt*) #1

declare dso_local %struct.vtpci_interrupt* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
