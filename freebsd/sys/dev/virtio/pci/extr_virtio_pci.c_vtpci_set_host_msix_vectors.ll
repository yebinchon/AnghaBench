; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_set_host_msix_vectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_set_host_msix_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, i32, %struct.TYPE_2__*, %struct.vtpci_interrupt*, %struct.vtpci_interrupt }
%struct.TYPE_2__ = type { i64 }
%struct.vtpci_interrupt = type { i32 }

@VIRTIO_MSI_CONFIG_VECTOR = common dso_local global i32 0, align 4
@VIRTIO_MSI_QUEUE_VECTOR = common dso_local global i32 0, align 4
@VTPCI_FLAG_SHARED_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtpci_softc*)* @vtpci_set_host_msix_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_set_host_msix_vectors(%struct.vtpci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca %struct.vtpci_interrupt*, align 8
  %5 = alloca %struct.vtpci_interrupt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %3, align 8
  %9 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %9, i32 0, i32 4
  store %struct.vtpci_interrupt* %10, %struct.vtpci_interrupt** %4, align 8
  %11 = load i32, i32* @VIRTIO_MSI_CONFIG_VECTOR, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %15 = call i32 @vtpci_register_msix_vector(%struct.vtpci_softc* %12, i32 %13, %struct.vtpci_interrupt* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %81

20:                                               ; preds = %1
  %21 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %21, i32 0, i32 3
  %23 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %22, align 8
  store %struct.vtpci_interrupt* %23, %struct.vtpci_interrupt** %4, align 8
  %24 = load i32, i32* @VIRTIO_MSI_QUEUE_VECTOR, align 4
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %76, %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %28 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %25
  %32 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @vtpci_select_virtqueue(%struct.vtpci_softc* %32, i32 %33)
  %35 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store %struct.vtpci_interrupt* null, %struct.vtpci_interrupt** %5, align 8
  br label %47

45:                                               ; preds = %31
  %46 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  store %struct.vtpci_interrupt* %46, %struct.vtpci_interrupt** %5, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %5, align 8
  %51 = call i32 @vtpci_register_msix_vector(%struct.vtpci_softc* %48, i32 %49, %struct.vtpci_interrupt* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %79

55:                                               ; preds = %47
  %56 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %57 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %55
  %66 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %67 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VTPCI_FLAG_SHARED_MSIX, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %4, align 8
  %74 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %73, i32 1
  store %struct.vtpci_interrupt* %74, %struct.vtpci_interrupt** %4, align 8
  br label %75

75:                                               ; preds = %72, %65, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %25

79:                                               ; preds = %54, %25
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @vtpci_register_msix_vector(%struct.vtpci_softc*, i32, %struct.vtpci_interrupt*) #1

declare dso_local i32 @vtpci_select_virtqueue(%struct.vtpci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
