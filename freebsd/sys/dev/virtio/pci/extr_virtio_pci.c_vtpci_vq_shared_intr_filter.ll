; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_vq_shared_intr_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_vq_shared_intr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, %struct.vtpci_virtqueue* }
%struct.vtpci_virtqueue = type { i64, i32 }

@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vtpci_vq_shared_intr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_vq_shared_intr_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca %struct.vtpci_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.vtpci_softc*
  store %struct.vtpci_softc* %8, %struct.vtpci_softc** %3, align 8
  %9 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %9, i32 0, i32 1
  %11 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %10, align 8
  %12 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %11, i64 0
  store %struct.vtpci_virtqueue* %12, %struct.vtpci_virtqueue** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %21 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %26 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @virtqueue_intr_filter(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %36 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %35, i32 1
  store %struct.vtpci_virtqueue* %36, %struct.vtpci_virtqueue** %4, align 8
  br label %13

37:                                               ; preds = %13
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @FILTER_STRAY, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  ret i32 %45
}

declare dso_local i32 @virtqueue_intr_filter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
