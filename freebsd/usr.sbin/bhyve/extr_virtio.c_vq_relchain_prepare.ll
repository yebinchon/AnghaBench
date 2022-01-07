; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vq_relchain_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vq_relchain_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i64, i32, %struct.vring_used* }
%struct.vring_used = type { %struct.virtio_used* }
%struct.virtio_used = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vq_relchain_prepare(%struct.vqueue_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vring_used*, align 8
  %8 = alloca %struct.virtio_used*, align 8
  %9 = alloca i64, align 8
  store %struct.vqueue_info* %0, %struct.vqueue_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %11 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %12, 1
  store i64 %13, i64* %9, align 8
  %14 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %15 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %14, i32 0, i32 2
  %16 = load %struct.vring_used*, %struct.vring_used** %15, align 8
  store %struct.vring_used* %16, %struct.vring_used** %7, align 8
  %17 = load %struct.vring_used*, %struct.vring_used** %7, align 8
  %18 = getelementptr inbounds %struct.vring_used, %struct.vring_used* %17, i32 0, i32 0
  %19 = load volatile %struct.virtio_used*, %struct.virtio_used** %18, align 8
  %20 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %21 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = sext i32 %22 to i64
  %25 = load i64, i64* %9, align 8
  %26 = and i64 %24, %25
  %27 = getelementptr inbounds %struct.virtio_used, %struct.virtio_used* %19, i64 %26
  store %struct.virtio_used* %27, %struct.virtio_used** %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.virtio_used*, %struct.virtio_used** %8, align 8
  %30 = getelementptr inbounds %struct.virtio_used, %struct.virtio_used* %29, i32 0, i32 0
  store volatile i64 %28, i64* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.virtio_used*, %struct.virtio_used** %8, align 8
  %33 = getelementptr inbounds %struct.virtio_used, %struct.virtio_used* %32, i32 0, i32 1
  store volatile i32 %31, i32* %33, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
