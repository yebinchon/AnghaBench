; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_check_recovery_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_check_recovery_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rack_sendmap = type { i32, i64, i64*, i32 }
%struct.tcpcb = type { i32, i32, i64 }
%struct.tcp_rack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@RACK_ACKED = common dso_local global i32 0, align 4
@CC_NDUPACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rack_sendmap* (%struct.tcpcb*, i64)* @rack_check_recovery_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rack_sendmap* @rack_check_recovery_mode(%struct.tcpcb* %0, i64 %1) #0 {
  %3 = alloca %struct.rack_sendmap*, align 8
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca %struct.rack_sendmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tcp_rack*
  store %struct.tcp_rack* %14, %struct.tcp_rack** %6, align 8
  %15 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %16 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = call i64 @RB_EMPTY(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %3, align 8
  br label %99

21:                                               ; preds = %2
  %22 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = call %struct.rack_sendmap* @TAILQ_FIRST(i32* %24)
  store %struct.rack_sendmap* %25, %struct.rack_sendmap** %7, align 8
  %26 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %27 = icmp eq %struct.rack_sendmap* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %3, align 8
  br label %99

29:                                               ; preds = %21
  %30 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %31 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RACK_ACKED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %38 = call %struct.rack_sendmap* @rack_find_lowest_rsm(%struct.tcp_rack* %37)
  store %struct.rack_sendmap* %38, %struct.rack_sendmap** %7, align 8
  %39 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %40 = icmp eq %struct.rack_sendmap* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %3, align 8
  br label %99

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %45 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, 1
  store i64 %47, i64* %8, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %49 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %50 = call i64 @rack_grab_rtt(%struct.tcpcb* %48, %struct.tcp_rack* %49)
  store i64 %50, i64* %9, align 8
  %51 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @rack_calc_thresh_rack(%struct.tcp_rack* %51, i64 %52, i64 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %57 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %55, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %3, align 8
  br label %99

64:                                               ; preds = %43
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %67 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %65, %71
  %73 = load i64, i64* %10, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %3, align 8
  br label %99

76:                                               ; preds = %64
  %77 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %78 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %81 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %87 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %93 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %96 = load i32, i32* @CC_NDUPACK, align 4
  %97 = call i32 @rack_cong_signal(%struct.tcpcb* %95, i32* null, i32 %96)
  %98 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  store %struct.rack_sendmap* %98, %struct.rack_sendmap** %3, align 8
  br label %99

99:                                               ; preds = %76, %75, %63, %41, %28, %20
  %100 = load %struct.rack_sendmap*, %struct.rack_sendmap** %3, align 8
  ret %struct.rack_sendmap* %100
}

declare dso_local i64 @RB_EMPTY(i32*) #1

declare dso_local %struct.rack_sendmap* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.rack_sendmap* @rack_find_lowest_rsm(%struct.tcp_rack*) #1

declare dso_local i64 @rack_grab_rtt(%struct.tcpcb*, %struct.tcp_rack*) #1

declare dso_local i64 @rack_calc_thresh_rack(%struct.tcp_rack*, i64, i64) #1

declare dso_local i32 @rack_cong_signal(%struct.tcpcb*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
