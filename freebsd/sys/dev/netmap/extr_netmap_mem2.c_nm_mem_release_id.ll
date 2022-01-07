; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_nm_mem_release_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_nm_mem_release_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { %struct.TYPE_2__*, %struct.netmap_mem_d* }
%struct.TYPE_2__ = type { %struct.netmap_mem_d* }

@netmap_last_mem_d = common dso_local global %struct.netmap_mem_d* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_mem_d*)* @nm_mem_release_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nm_mem_release_id(%struct.netmap_mem_d* %0) #0 {
  %2 = alloca %struct.netmap_mem_d*, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %2, align 8
  %3 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %4 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %7 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %6, i32 0, i32 1
  %8 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %7, align 8
  %9 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %8, i32 0, i32 0
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %11 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %10, i32 0, i32 1
  %12 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %11, align 8
  %13 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %14 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.netmap_mem_d* %12, %struct.netmap_mem_d** %16, align 8
  %17 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** @netmap_last_mem_d, align 8
  %18 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %19 = icmp eq %struct.netmap_mem_d* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %22 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %21, i32 0, i32 1
  %23 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %22, align 8
  store %struct.netmap_mem_d* %23, %struct.netmap_mem_d** @netmap_last_mem_d, align 8
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %26 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %25, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %28 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %27, i32 0, i32 1
  store %struct.netmap_mem_d* null, %struct.netmap_mem_d** %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
