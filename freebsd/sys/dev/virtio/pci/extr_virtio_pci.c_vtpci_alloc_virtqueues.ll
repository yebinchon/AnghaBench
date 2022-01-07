; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_virtqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_virtqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vq_alloc_info = type { i32*, %struct.virtqueue** }
%struct.virtqueue = type { i32 }
%struct.vtpci_softc = type { i64, %struct.vtpci_virtqueue* }
%struct.vtpci_virtqueue = type { i32, %struct.virtqueue* }

@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_PCI_QUEUE_NUM = common dso_local global i32 0, align 4
@VIRTIO_PCI_VRING_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot allocate virtqueue %d: %d\0A\00", align 1
@VIRTIO_PCI_QUEUE_PFN = common dso_local global i32 0, align 4
@VIRTIO_PCI_QUEUE_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.vq_alloc_info*)* @vtpci_alloc_virtqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_alloc_virtqueues(i32 %0, i32 %1, i32 %2, %struct.vq_alloc_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vq_alloc_info*, align 8
  %10 = alloca %struct.vtpci_softc*, align 8
  %11 = alloca %struct.virtqueue*, align 8
  %12 = alloca %struct.vtpci_virtqueue*, align 8
  %13 = alloca %struct.vq_alloc_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vq_alloc_info* %3, %struct.vq_alloc_info** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.vtpci_softc* @device_get_softc(i32 %17)
  store %struct.vtpci_softc* %18, %struct.vtpci_softc** %10, align 8
  %19 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %20 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EALREADY, align 4
  store i32 %24, i32* %5, align 4
  br label %119

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %119

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 16
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.vtpci_virtqueue* @malloc(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %41 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %40, i32 0, i32 1
  store %struct.vtpci_virtqueue* %39, %struct.vtpci_virtqueue** %41, align 8
  %42 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %43 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %42, i32 0, i32 1
  %44 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %43, align 8
  %45 = icmp eq %struct.vtpci_virtqueue* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %5, align 4
  br label %119

48:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %108, %48
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %111

53:                                               ; preds = %49
  %54 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %55 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %54, i32 0, i32 1
  %56 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %56, i64 %58
  store %struct.vtpci_virtqueue* %59, %struct.vtpci_virtqueue** %12, align 8
  %60 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %9, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %60, i64 %62
  store %struct.vq_alloc_info* %63, %struct.vq_alloc_info** %13, align 8
  %64 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @vtpci_select_virtqueue(%struct.vtpci_softc* %64, i32 %65)
  %67 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %68 = load i32, i32* @VIRTIO_PCI_QUEUE_NUM, align 4
  %69 = call i32 @vtpci_read_config_2(%struct.vtpci_softc* %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @VIRTIO_PCI_VRING_ALIGN, align 4
  %74 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %13, align 8
  %75 = call i32 @virtqueue_alloc(i32 %70, i32 %71, i32 %72, i32 %73, i32 -1, %struct.vq_alloc_info* %74, %struct.virtqueue** %11)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %53
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  br label %111

83:                                               ; preds = %53
  %84 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %85 = load i32, i32* @VIRTIO_PCI_QUEUE_PFN, align 4
  %86 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  %87 = call i32 @virtqueue_paddr(%struct.virtqueue* %86)
  %88 = load i32, i32* @VIRTIO_PCI_QUEUE_ADDR_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = call i32 @vtpci_write_config_4(%struct.vtpci_softc* %84, i32 %85, i32 %89)
  %91 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  %92 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %13, align 8
  %93 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %92, i32 0, i32 1
  %94 = load %struct.virtqueue**, %struct.virtqueue*** %93, align 8
  store %struct.virtqueue* %91, %struct.virtqueue** %94, align 8
  %95 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %12, align 8
  %96 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %95, i32 0, i32 1
  store %struct.virtqueue* %91, %struct.virtqueue** %96, align 8
  %97 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %13, align 8
  %98 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  %101 = zext i1 %100 to i32
  %102 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %12, align 8
  %103 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %105 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %83
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %49

111:                                              ; preds = %78, %49
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %116 = call i32 @vtpci_free_virtqueues(%struct.vtpci_softc* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %46, %28, %23
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.vtpci_softc* @device_get_softc(i32) #1

declare dso_local %struct.vtpci_virtqueue* @malloc(i32, i32, i32) #1

declare dso_local i32 @vtpci_select_virtqueue(%struct.vtpci_softc*, i32) #1

declare dso_local i32 @vtpci_read_config_2(%struct.vtpci_softc*, i32) #1

declare dso_local i32 @virtqueue_alloc(i32, i32, i32, i32, i32, %struct.vq_alloc_info*, %struct.virtqueue**) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @vtpci_write_config_4(%struct.vtpci_softc*, i32, i32) #1

declare dso_local i32 @virtqueue_paddr(%struct.virtqueue*) #1

declare dso_local i32 @vtpci_free_virtqueues(%struct.vtpci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
