; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_ring_timestamp_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_ring_timestamp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_ring = type { i32, i32 }

@netmap_no_timestamp = common dso_local global i64 0, align 8
@NR_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_ring*)* @ring_timestamp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_timestamp_set(%struct.netmap_ring* %0) #0 {
  %2 = alloca %struct.netmap_ring*, align 8
  store %struct.netmap_ring* %0, %struct.netmap_ring** %2, align 8
  %3 = load i64, i64* @netmap_no_timestamp, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load %struct.netmap_ring*, %struct.netmap_ring** %2, align 8
  %7 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NR_TIMESTAMP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5, %1
  %13 = load %struct.netmap_ring*, %struct.netmap_ring** %2, align 8
  %14 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %13, i32 0, i32 1
  %15 = call i32 @microtime(i32* %14)
  br label %16

16:                                               ; preds = %12, %5
  ret void
}

declare dso_local i32 @microtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
