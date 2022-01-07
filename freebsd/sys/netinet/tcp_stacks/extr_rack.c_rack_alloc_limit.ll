; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_alloc_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_alloc_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rack_sendmap = type { i64 }
%struct.tcp_rack = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@rack_tcp_map_split_limit = common dso_local global i64 0, align 8
@rack_split_limited = common dso_local global i32 0, align 4
@rack_alloc_limited_conns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rack_sendmap* (%struct.tcp_rack*, i64)* @rack_alloc_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rack_sendmap* @rack_alloc_limit(%struct.tcp_rack* %0, i64 %1) #0 {
  %3 = alloca %struct.rack_sendmap*, align 8
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rack_sendmap*, align 8
  store %struct.tcp_rack* %0, %struct.tcp_rack** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load i64, i64* @rack_tcp_map_split_limit, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %14 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %19 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @rack_tcp_map_split_limit, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i32, i32* @rack_split_limited, align 4
  %26 = call i32 @counter_u64_add(i32 %25, i32 1)
  %27 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %28 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %33 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @rack_alloc_limited_conns, align 4
  %35 = call i32 @counter_u64_add(i32 %34, i32 1)
  br label %36

36:                                               ; preds = %31, %24
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %3, align 8
  br label %57

37:                                               ; preds = %17, %12, %9
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %40 = call %struct.rack_sendmap* @rack_alloc(%struct.tcp_rack* %39)
  store %struct.rack_sendmap* %40, %struct.rack_sendmap** %6, align 8
  %41 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %42 = icmp ne %struct.rack_sendmap* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %49 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %51 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %46, %43, %38
  %56 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  store %struct.rack_sendmap* %56, %struct.rack_sendmap** %3, align 8
  br label %57

57:                                               ; preds = %55, %36
  %58 = load %struct.rack_sendmap*, %struct.rack_sendmap** %3, align 8
  ret %struct.rack_sendmap* %58
}

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local %struct.rack_sendmap* @rack_alloc(%struct.tcp_rack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
