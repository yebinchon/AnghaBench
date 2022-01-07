; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_ring_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_ring_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptnet_queue = type { %struct.nm_csb_ktoa*, %struct.nm_csb_atok* }
%struct.nm_csb_ktoa = type { i32 }
%struct.nm_csb_atok = type { i32 }
%struct.netmap_kring = type { i32, i32, %struct.netmap_ring* }
%struct.netmap_ring = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptnet_queue*, %struct.netmap_kring*, i32, i32)* @ptnet_ring_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptnet_ring_update(%struct.ptnet_queue* %0, %struct.netmap_kring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ptnet_queue*, align 8
  %6 = alloca %struct.netmap_kring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netmap_ring*, align 8
  %10 = alloca %struct.nm_csb_atok*, align 8
  %11 = alloca %struct.nm_csb_ktoa*, align 8
  store %struct.ptnet_queue* %0, %struct.ptnet_queue** %5, align 8
  store %struct.netmap_kring* %1, %struct.netmap_kring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.netmap_kring*, %struct.netmap_kring** %6, align 8
  %13 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %12, i32 0, i32 2
  %14 = load %struct.netmap_ring*, %struct.netmap_ring** %13, align 8
  store %struct.netmap_ring* %14, %struct.netmap_ring** %9, align 8
  %15 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %16 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %15, i32 0, i32 1
  %17 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %16, align 8
  store %struct.nm_csb_atok* %17, %struct.nm_csb_atok** %10, align 8
  %18 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %19 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %18, i32 0, i32 0
  %20 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %19, align 8
  store %struct.nm_csb_ktoa* %20, %struct.nm_csb_ktoa** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %23 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %25 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.netmap_kring*, %struct.netmap_kring** %6, align 8
  %28 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.netmap_kring*, %struct.netmap_kring** %6, align 8
  %30 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %10, align 8
  %32 = load %struct.netmap_kring*, %struct.netmap_kring** %6, align 8
  %33 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.netmap_kring*, %struct.netmap_kring** %6, align 8
  %36 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nm_sync_kloop_appl_write(%struct.nm_csb_atok* %31, i32 %34, i32 %37)
  %39 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %11, align 8
  %40 = getelementptr inbounds %struct.nm_csb_ktoa, %struct.nm_csb_ktoa* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @NM_ACCESS_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %10, align 8
  %47 = getelementptr inbounds %struct.nm_csb_atok, %struct.nm_csb_atok* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %49 = call i32 @ptnet_kick(%struct.ptnet_queue* %48)
  br label %50

50:                                               ; preds = %44, %4
  ret void
}

declare dso_local i32 @nm_sync_kloop_appl_write(%struct.nm_csb_atok*, i32, i32) #1

declare dso_local i64 @NM_ACCESS_ONCE(i32) #1

declare dso_local i32 @ptnet_kick(%struct.ptnet_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
