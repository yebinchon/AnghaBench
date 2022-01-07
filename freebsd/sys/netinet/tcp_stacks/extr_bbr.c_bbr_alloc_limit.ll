; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_alloc_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_alloc_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbr_sendmap = type { i64 }
%struct.tcp_bbr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@bbr_tcp_map_split_limit = common dso_local global i64 0, align 8
@bbr_split_limited = common dso_local global i32 0, align 4
@bbr_alloc_limited_conns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bbr_sendmap* (%struct.tcp_bbr*, i64)* @bbr_alloc_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bbr_sendmap* @bbr_alloc_limit(%struct.tcp_bbr* %0, i64 %1) #0 {
  %3 = alloca %struct.bbr_sendmap*, align 8
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bbr_sendmap*, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i64, i64* @bbr_tcp_map_split_limit, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %14 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @bbr_tcp_map_split_limit, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32, i32* @bbr_split_limited, align 4
  %21 = call i32 @BBR_STAT_INC(i32 %20)
  %22 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %23 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %28 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @bbr_alloc_limited_conns, align 4
  %30 = call i32 @BBR_STAT_INC(i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %3, align 8
  br label %52

32:                                               ; preds = %12, %9
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %35 = call %struct.bbr_sendmap* @bbr_alloc(%struct.tcp_bbr* %34)
  store %struct.bbr_sendmap* %35, %struct.bbr_sendmap** %6, align 8
  %36 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %37 = icmp ne %struct.bbr_sendmap* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %44 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %41, %38, %33
  %51 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  store %struct.bbr_sendmap* %51, %struct.bbr_sendmap** %3, align 8
  br label %52

52:                                               ; preds = %50, %31
  %53 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %3, align 8
  ret %struct.bbr_sendmap* %53
}

declare dso_local i32 @BBR_STAT_INC(i32) #1

declare dso_local %struct.bbr_sendmap* @bbr_alloc(%struct.tcp_bbr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
