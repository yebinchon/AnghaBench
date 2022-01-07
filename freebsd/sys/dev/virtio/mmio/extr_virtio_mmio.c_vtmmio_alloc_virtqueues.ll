; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_alloc_virtqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/mmio/extr_virtio_mmio.c_vtmmio_alloc_virtqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vq_alloc_info = type { i32*, %struct.virtqueue** }
%struct.virtqueue = type { i32 }
%struct.vtmmio_virtqueue = type { i32, %struct.virtqueue* }
%struct.vtmmio_softc = type { i64, %struct.vtmmio_virtqueue* }

@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_MMIO_GUEST_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_SEL = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_NUM_MAX = common dso_local global i32 0, align 4
@VIRTIO_MMIO_VRING_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot allocate virtqueue %d: %d\0A\00", align 1
@VIRTIO_MMIO_QUEUE_NUM = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_ALIGN = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_PFN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.vq_alloc_info*)* @vtmmio_alloc_virtqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtmmio_alloc_virtqueues(i32 %0, i32 %1, i32 %2, %struct.vq_alloc_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vq_alloc_info*, align 8
  %10 = alloca %struct.vtmmio_virtqueue*, align 8
  %11 = alloca %struct.vq_alloc_info*, align 8
  %12 = alloca %struct.vtmmio_softc*, align 8
  %13 = alloca %struct.virtqueue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vq_alloc_info* %3, %struct.vq_alloc_info** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.vtmmio_softc* @device_get_softc(i32 %17)
  store %struct.vtmmio_softc* %18, %struct.vtmmio_softc** %12, align 8
  %19 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %20 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EALREADY, align 4
  store i32 %24, i32* %5, align 4
  br label %136

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %136

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 16
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.vtmmio_virtqueue* @malloc(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %41 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %40, i32 0, i32 1
  store %struct.vtmmio_virtqueue* %39, %struct.vtmmio_virtqueue** %41, align 8
  %42 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %43 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %42, i32 0, i32 1
  %44 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %43, align 8
  %45 = icmp eq %struct.vtmmio_virtqueue* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %5, align 4
  br label %136

48:                                               ; preds = %30
  %49 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %50 = load i32, i32* @VIRTIO_MMIO_GUEST_PAGE_SIZE, align 4
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %49, i32 %50, i32 %52)
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %125, %48
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %128

58:                                               ; preds = %54
  %59 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %60 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %59, i32 0, i32 1
  %61 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %61, i64 %63
  store %struct.vtmmio_virtqueue* %64, %struct.vtmmio_virtqueue** %10, align 8
  %65 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %9, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %65, i64 %67
  store %struct.vq_alloc_info* %68, %struct.vq_alloc_info** %11, align 8
  %69 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %70 = load i32, i32* @VIRTIO_MMIO_QUEUE_SEL, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @vtmmio_select_virtqueue(%struct.vtmmio_softc* %73, i32 %74)
  %76 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %77 = load i32, i32* @VIRTIO_MMIO_QUEUE_NUM_MAX, align 4
  %78 = call i32 @vtmmio_read_config_4(%struct.vtmmio_softc* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @VIRTIO_MMIO_VRING_ALIGN, align 4
  %83 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %11, align 8
  %84 = call i32 @virtqueue_alloc(i32 %79, i32 %80, i32 %81, i32 %82, i32 -1, %struct.vq_alloc_info* %83, %struct.virtqueue** %13)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %58
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  br label %128

92:                                               ; preds = %58
  %93 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %94 = load i32, i32* @VIRTIO_MMIO_QUEUE_NUM, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %98 = load i32, i32* @VIRTIO_MMIO_QUEUE_ALIGN, align 4
  %99 = load i32, i32* @VIRTIO_MMIO_VRING_ALIGN, align 4
  %100 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %102 = load i32, i32* @VIRTIO_MMIO_QUEUE_PFN, align 4
  %103 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %104 = call i32 @virtqueue_paddr(%struct.virtqueue* %103)
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = ashr i32 %104, %105
  %107 = call i32 @vtmmio_write_config_4(%struct.vtmmio_softc* %101, i32 %102, i32 %106)
  %108 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %109 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %11, align 8
  %110 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %109, i32 0, i32 1
  %111 = load %struct.virtqueue**, %struct.virtqueue*** %110, align 8
  store %struct.virtqueue* %108, %struct.virtqueue** %111, align 8
  %112 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %10, align 8
  %113 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %112, i32 0, i32 1
  store %struct.virtqueue* %108, %struct.virtqueue** %113, align 8
  %114 = load %struct.vq_alloc_info*, %struct.vq_alloc_info** %11, align 8
  %115 = getelementptr inbounds %struct.vq_alloc_info, %struct.vq_alloc_info* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  %118 = zext i1 %117 to i32
  %119 = load %struct.vtmmio_virtqueue*, %struct.vtmmio_virtqueue** %10, align 8
  %120 = getelementptr inbounds %struct.vtmmio_virtqueue, %struct.vtmmio_virtqueue* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %122 = getelementptr inbounds %struct.vtmmio_softc, %struct.vtmmio_softc* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %92
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %54

128:                                              ; preds = %87, %54
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.vtmmio_softc*, %struct.vtmmio_softc** %12, align 8
  %133 = call i32 @vtmmio_free_virtqueues(%struct.vtmmio_softc* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %46, %28, %23
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.vtmmio_softc* @device_get_softc(i32) #1

declare dso_local %struct.vtmmio_virtqueue* @malloc(i32, i32, i32) #1

declare dso_local i32 @vtmmio_write_config_4(%struct.vtmmio_softc*, i32, i32) #1

declare dso_local i32 @vtmmio_select_virtqueue(%struct.vtmmio_softc*, i32) #1

declare dso_local i32 @vtmmio_read_config_4(%struct.vtmmio_softc*, i32) #1

declare dso_local i32 @virtqueue_alloc(i32, i32, i32, i32, i32, %struct.vq_alloc_info*, %struct.virtqueue**) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @virtqueue_paddr(%struct.virtqueue*) #1

declare dso_local i32 @vtmmio_free_virtqueues(%struct.vtmmio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
