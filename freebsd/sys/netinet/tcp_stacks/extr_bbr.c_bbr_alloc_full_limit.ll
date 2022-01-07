; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_alloc_full_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_alloc_full_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbr_sendmap = type { i32 }
%struct.tcp_bbr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@bbr_tcp_map_entries_limit = common dso_local global i64 0, align 8
@bbr_alloc_limited = common dso_local global i32 0, align 4
@bbr_alloc_limited_conns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bbr_sendmap* (%struct.tcp_bbr*)* @bbr_alloc_full_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bbr_sendmap* @bbr_alloc_full_limit(%struct.tcp_bbr* %0) #0 {
  %2 = alloca %struct.bbr_sendmap*, align 8
  %3 = alloca %struct.tcp_bbr*, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  %4 = load i64, i64* @bbr_tcp_map_entries_limit, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @bbr_tcp_map_entries_limit, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = load i32, i32* @bbr_alloc_limited, align 4
  %15 = call i32 @BBR_STAT_INC(i32 %14)
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @bbr_alloc_limited_conns, align 4
  %24 = call i32 @BBR_STAT_INC(i32 %23)
  br label %25

25:                                               ; preds = %20, %13
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %2, align 8
  br label %29

26:                                               ; preds = %6, %1
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %28 = call %struct.bbr_sendmap* @bbr_alloc(%struct.tcp_bbr* %27)
  store %struct.bbr_sendmap* %28, %struct.bbr_sendmap** %2, align 8
  br label %29

29:                                               ; preds = %26, %25
  %30 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %2, align 8
  ret %struct.bbr_sendmap* %30
}

declare dso_local i32 @BBR_STAT_INC(i32) #1

declare dso_local %struct.bbr_sendmap* @bbr_alloc(%struct.tcp_bbr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
