; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vq_endchains.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vq_endchains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.virtio_softc* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.virtio_softc = type { i32 }

@VIRTIO_F_NOTIFY_ON_EMPTY = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@VRING_AVAIL_F_NO_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vq_endchains(%struct.vqueue_info* %0, i32 %1) #0 {
  %3 = alloca %struct.vqueue_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vqueue_info* %0, %struct.vqueue_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %11 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %10, i32 0, i32 3
  %12 = load %struct.virtio_softc*, %struct.virtio_softc** %11, align 8
  store %struct.virtio_softc* %12, %struct.virtio_softc** %5, align 8
  %13 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %14 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %17 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %22 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = call i32 (...) @atomic_thread_fence_seq_cst()
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.virtio_softc*, %struct.virtio_softc** %5, align 8
  %28 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VIRTIO_F_NOTIFY_ON_EMPTY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %71

34:                                               ; preds = %26, %2
  %35 = load %struct.virtio_softc*, %struct.virtio_softc** %5, align 8
  %36 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %43 = call i32 @VQ_USED_EVENT_IDX(%struct.vqueue_info* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  %51 = icmp slt i32 %47, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %9, align 4
  br label %70

53:                                               ; preds = %34
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %59 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VRING_AVAIL_F_NO_INTERRUPT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %57, %53
  %68 = phi i1 [ false, %53 ], [ %66, %57 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %41
  br label %71

71:                                               ; preds = %70, %33
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.virtio_softc*, %struct.virtio_softc** %5, align 8
  %76 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %77 = call i32 @vq_interrupt(%struct.virtio_softc* %75, %struct.vqueue_info* %76)
  br label %78

78:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

declare dso_local i32 @VQ_USED_EVENT_IDX(%struct.vqueue_info*) #1

declare dso_local i32 @vq_interrupt(%struct.virtio_softc*, %struct.vqueue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
