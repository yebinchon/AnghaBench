; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { i32, %struct.vqueue_info*, i32 }
%struct.vqueue_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VIRTIO_MMIO_QUEUE_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"we support single queue only\00", align 1
@VRING_AVAIL_F_NO_INTERRUPT = common dso_local global i32 0, align 4
@VIRTIO_MMIO_INT_VRING = common dso_local global i32 0, align 4
@VIRTIO_MMIO_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@Q_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beri_vtblk_softc*)* @vtblk_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_notify(%struct.beri_vtblk_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beri_vtblk_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.beri_vtblk_softc* %0, %struct.beri_vtblk_softc** %3, align 8
  %7 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %8 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %7, i32 0, i32 1
  %9 = load %struct.vqueue_info*, %struct.vqueue_info** %8, align 8
  %10 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %9, i64 0
  store %struct.vqueue_info* %10, %struct.vqueue_info** %4, align 8
  %11 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %12 = call i32 @vq_ring_ready(%struct.vqueue_info* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %17 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %76

21:                                               ; preds = %15
  %22 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %23 = load i32, i32* @VIRTIO_MMIO_QUEUE_NOTIFY, align 4
  %24 = call i32 @READ2(%struct.beri_vtblk_softc* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @be16toh(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %32 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %31, i32 0, i32 1
  %33 = load %struct.vqueue_info*, %struct.vqueue_info** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %33, i64 %35
  store %struct.vqueue_info* %36, %struct.vqueue_info** %4, align 8
  %37 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %38 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16toh(i32 %41)
  %43 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %44 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %49, %21
  %46 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %47 = call i64 @vq_has_descs(%struct.vqueue_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %51 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %52 = call i32 @vtblk_proc(%struct.beri_vtblk_softc* %50, %struct.vqueue_info* %51)
  br label %45

53:                                               ; preds = %45
  %54 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %55 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be16toh(i32 %58)
  %60 = load i32, i32* @VRING_AVAIL_F_NO_INTERRUPT, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load i32, i32* @VIRTIO_MMIO_INT_VRING, align 4
  %65 = call i32 @htobe32(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %67 = load i32, i32* @VIRTIO_MMIO_INTERRUPT_STATUS, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @WRITE4(%struct.beri_vtblk_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %71 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @Q_INTR, align 4
  %74 = call i32 @PIO_SET(i32 %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %63, %53
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %20, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @vq_ring_ready(%struct.vqueue_info*) #1

declare dso_local i32 @READ2(%struct.beri_vtblk_softc*, i32) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vq_has_descs(%struct.vqueue_info*) #1

declare dso_local i32 @vtblk_proc(%struct.beri_vtblk_softc*, %struct.vqueue_info*) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @WRITE4(%struct.beri_vtblk_softc*, i32, i32) #1

declare dso_local i32 @PIO_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
