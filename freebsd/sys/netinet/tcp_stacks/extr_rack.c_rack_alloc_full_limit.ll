; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_alloc_full_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_alloc_full_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rack_sendmap = type { i32 }
%struct.tcp_rack = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@rack_tcp_map_entries_limit = common dso_local global i64 0, align 8
@rack_to_alloc_limited = common dso_local global i32 0, align 4
@rack_alloc_limited_conns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rack_sendmap* (%struct.tcp_rack*)* @rack_alloc_full_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rack_sendmap* @rack_alloc_full_limit(%struct.tcp_rack* %0) #0 {
  %2 = alloca %struct.rack_sendmap*, align 8
  %3 = alloca %struct.tcp_rack*, align 8
  store %struct.tcp_rack* %0, %struct.tcp_rack** %3, align 8
  %4 = load i64, i64* @rack_tcp_map_entries_limit, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @rack_tcp_map_entries_limit, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load i32, i32* @rack_to_alloc_limited, align 4
  %20 = call i32 @counter_u64_add(i32 %19, i32 1)
  %21 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %27 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @rack_alloc_limited_conns, align 4
  %29 = call i32 @counter_u64_add(i32 %28, i32 1)
  br label %30

30:                                               ; preds = %25, %18
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %2, align 8
  br label %34

31:                                               ; preds = %11, %6, %1
  %32 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %33 = call %struct.rack_sendmap* @rack_alloc(%struct.tcp_rack* %32)
  store %struct.rack_sendmap* %33, %struct.rack_sendmap** %2, align 8
  br label %34

34:                                               ; preds = %31, %30
  %35 = load %struct.rack_sendmap*, %struct.rack_sendmap** %2, align 8
  ret %struct.rack_sendmap* %35
}

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local %struct.rack_sendmap* @rack_alloc(%struct.tcp_rack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
