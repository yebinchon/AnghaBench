; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtbe_softc = type { i64, i32, %struct.vqueue_info* }
%struct.vqueue_info = type { i32, i32, i64, i32, %struct.vring_used*, %struct.vring_avail*, %struct.vring_desc* }
%struct.vring_used = type { i32 }
%struct.vring_avail = type { i32 }
%struct.vring_desc = type { i32 }

@DESC_COUNT = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_PFN = common dso_local global i32 0, align 4
@VRING_ALIGN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VQ_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtbe_softc*)* @vq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vq_init(%struct.vtbe_softc* %0) #0 {
  %2 = alloca %struct.vtbe_softc*, align 8
  %3 = alloca %struct.vqueue_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vtbe_softc* %0, %struct.vtbe_softc** %2, align 8
  %8 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %8, i32 0, i32 2
  %10 = load %struct.vqueue_info*, %struct.vqueue_info** %9, align 8
  %11 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %10, i64 %13
  store %struct.vqueue_info* %14, %struct.vqueue_info** %3, align 8
  %15 = load i32, i32* @DESC_COUNT, align 4
  %16 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %17 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %19 = load i32, i32* @VIRTIO_MMIO_QUEUE_PFN, align 4
  %20 = call i32 @READ4(%struct.vtbe_softc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @be32toh(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %25 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %27 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VRING_ALIGN, align 4
  %30 = call i32 @vring_size(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = call i32* @paddr_map(i32 %33, i32 %36, i32 %37)
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = bitcast i32* %39 to %struct.vring_desc*
  %41 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %42 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %41, i32 0, i32 6
  store %struct.vring_desc* %40, %struct.vring_desc** %42, align 8
  %43 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %44 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %47
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = bitcast i32* %50 to %struct.vring_avail*
  %52 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %53 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %52, i32 0, i32 5
  store %struct.vring_avail* %51, %struct.vring_avail** %53, align 8
  %54 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %55 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 2, %56
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 %60
  store i32* %62, i32** %4, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = ptrtoint i32* %63 to i64
  %65 = load i32, i32* @VRING_ALIGN, align 4
  %66 = call i64 @roundup2(i64 %64, i32 %65)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = bitcast i32* %68 to %struct.vring_used*
  %70 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %71 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %70, i32 0, i32 4
  store %struct.vring_used* %69, %struct.vring_used** %71, align 8
  %72 = load i32, i32* @VQ_ALLOC, align 4
  %73 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %74 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %76 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  ret i32 0
}

declare dso_local i32 @READ4(%struct.vtbe_softc*, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32* @paddr_map(i32, i32, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
