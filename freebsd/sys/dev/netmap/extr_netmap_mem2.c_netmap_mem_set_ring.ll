; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_set_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_set_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { %struct.netmap_obj_pool* }
%struct.netmap_obj_pool = type { i32 }
%struct.netmap_slot = type { i64, i32, i32 }

@NETMAP_BUF_POOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_mem_d*, %struct.netmap_slot*, i64, i32)* @netmap_mem_set_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_mem_set_ring(%struct.netmap_mem_d* %0, %struct.netmap_slot* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.netmap_mem_d*, align 8
  %6 = alloca %struct.netmap_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netmap_obj_pool*, align 8
  %10 = alloca i64, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %5, align 8
  store %struct.netmap_slot* %1, %struct.netmap_slot** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %12 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %11, i32 0, i32 0
  %13 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %12, align 8
  %14 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %15 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %13, i64 %14
  store %struct.netmap_obj_pool* %15, %struct.netmap_obj_pool** %9, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %37, %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %22, i64 %23
  %25 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %24, i32 0, i32 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %9, align 8
  %27 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %29, i64 %30
  %32 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 8
  %33 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %33, i64 %34
  %36 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %20
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  br label %16

40:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
