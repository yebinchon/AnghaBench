; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vi_reset_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vi_reset_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_softc = type { i8*, i64, i32, i64, i64, %struct.vqueue_info*, %struct.TYPE_2__*, i64 }
%struct.vqueue_info = type { i8*, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@VIRTIO_MSI_NO_VECTOR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vi_reset_dev(%struct.virtio_softc* %0) #0 {
  %2 = alloca %struct.virtio_softc*, align 8
  %3 = alloca %struct.vqueue_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.virtio_softc* %0, %struct.virtio_softc** %2, align 8
  %6 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %7 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %12 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @pthread_mutex_isowned_np(i64 %13)
  %15 = call i32 @assert(i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %18 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %23 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %22, i32 0, i32 5
  %24 = load %struct.vqueue_info*, %struct.vqueue_info** %23, align 8
  store %struct.vqueue_info* %24, %struct.vqueue_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %43, %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %31 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %33 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %35 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %37 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %39 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** @VIRTIO_MSI_NO_VECTOR, align 8
  %41 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %42 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %29
  %44 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %45 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %44, i32 1
  store %struct.vqueue_info* %45, %struct.vqueue_info** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %50 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %52 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %54 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %59 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pci_lintr_deassert(i32 %60)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %64 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load i8*, i8** @VIRTIO_MSI_NO_VECTOR, align 8
  %66 = load %struct.virtio_softc*, %struct.virtio_softc** %2, align 8
  %67 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_isowned_np(i64) #1

declare dso_local i32 @pci_lintr_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
