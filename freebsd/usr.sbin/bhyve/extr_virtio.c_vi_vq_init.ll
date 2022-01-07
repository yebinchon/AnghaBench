; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vi_vq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vi_vq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_softc = type { i64, %struct.TYPE_2__*, %struct.vqueue_info* }
%struct.TYPE_2__ = type { i32 }
%struct.vqueue_info = type { i32, i64, i64, i64, i32, %struct.vring_used*, %struct.vring_avail*, %struct.virtio_desc*, i64 }
%struct.vring_used = type { i32 }
%struct.vring_avail = type { i32 }
%struct.virtio_desc = type { i32 }

@VRING_PFN = common dso_local global i32 0, align 4
@VRING_ALIGN = common dso_local global i32 0, align 4
@VQ_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vi_vq_init(%struct.virtio_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.virtio_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vqueue_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.virtio_softc* %0, %struct.virtio_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %9, i32 0, i32 2
  %11 = load %struct.vqueue_info*, %struct.vqueue_info** %10, align 8
  %12 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %11, i64 %14
  store %struct.vqueue_info* %15, %struct.vqueue_info** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %18 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %17, i32 0, i32 8
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @VRING_PFN, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %24 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @vring_size(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %28 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i8* @paddr_guest2host(i32 %31, i32 %32, i64 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to %struct.virtio_desc*
  %37 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %38 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %37, i32 0, i32 7
  store %struct.virtio_desc* %36, %struct.virtio_desc** %38, align 8
  %39 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %40 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to %struct.vring_avail*
  %48 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %49 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %48, i32 0, i32 6
  store %struct.vring_avail* %47, %struct.vring_avail** %49, align 8
  %50 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %51 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 2, %52
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load i32, i32* @VRING_ALIGN, align 4
  %62 = call i64 @roundup2(i64 %60, i32 %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = bitcast i8* %64 to %struct.vring_used*
  %66 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %67 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %66, i32 0, i32 5
  store %struct.vring_used* %65, %struct.vring_used** %67, align 8
  %68 = load i32, i32* @VQ_ALLOC, align 4
  %69 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %70 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %72 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %74 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %76 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  ret void
}

declare dso_local i64 @vring_size(i32) #1

declare dso_local i8* @paddr_guest2host(i32, i32, i64) #1

declare dso_local i64 @roundup2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
