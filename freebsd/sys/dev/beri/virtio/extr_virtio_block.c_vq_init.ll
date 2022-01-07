; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { i32, %struct.vqueue_info* }
%struct.vqueue_info = type { i32, i32, i64, i32, %struct.vring_used*, %struct.vring_avail*, %struct.vring_desc* }
%struct.vring_used = type { i32 }
%struct.vring_avail = type { i32 }
%struct.vring_desc = type { i32 }

@NUM_DESCS = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_PFN = common dso_local global i32 0, align 4
@VRING_ALIGN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VQ_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beri_vtblk_softc*)* @vq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vq_init(%struct.beri_vtblk_softc* %0) #0 {
  %2 = alloca %struct.beri_vtblk_softc*, align 8
  %3 = alloca %struct.vqueue_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.beri_vtblk_softc* %0, %struct.beri_vtblk_softc** %2, align 8
  %8 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %9 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %8, i32 0, i32 1
  %10 = load %struct.vqueue_info*, %struct.vqueue_info** %9, align 8
  %11 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %10, i64 0
  store %struct.vqueue_info* %11, %struct.vqueue_info** %3, align 8
  %12 = load i32, i32* @NUM_DESCS, align 4
  %13 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %14 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %16 = load i32, i32* @VIRTIO_MMIO_QUEUE_PFN, align 4
  %17 = call i32 @READ4(%struct.beri_vtblk_softc* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @be32toh(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %22 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %24 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VRING_ALIGN, align 4
  %27 = call i32 @vring_size(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %2, align 8
  %29 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @paddr_map(i32 %30, i32 %33, i32 %34)
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = bitcast i32* %36 to %struct.vring_desc*
  %38 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %39 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %38, i32 0, i32 6
  store %struct.vring_desc* %37, %struct.vring_desc** %39, align 8
  %40 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %41 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = bitcast i32* %47 to %struct.vring_avail*
  %49 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %50 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %49, i32 0, i32 5
  store %struct.vring_avail* %48, %struct.vring_avail** %50, align 8
  %51 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %52 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 2, %53
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  store i32* %59, i32** %4, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = ptrtoint i32* %60 to i64
  %62 = load i32, i32* @VRING_ALIGN, align 4
  %63 = call i64 @roundup2(i64 %61, i32 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %4, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = bitcast i32* %65 to %struct.vring_used*
  %67 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %68 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %67, i32 0, i32 4
  store %struct.vring_used* %66, %struct.vring_used** %68, align 8
  %69 = load i32, i32* @VQ_ALLOC, align 4
  %70 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %71 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.vqueue_info*, %struct.vqueue_info** %3, align 8
  %73 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  ret i32 0
}

declare dso_local i32 @READ4(%struct.beri_vtblk_softc*, i32) #1

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
