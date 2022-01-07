; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_tcp_rack_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_tcp_rack_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rack_sendmap = type { i32, i64, i64*, i64 }
%struct.tcpcb = type { i32 }
%struct.tcp_rack = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TF_SENTFIN = common dso_local global i32 0, align 4
@RACK_ACKED = common dso_local global i32 0, align 4
@RACK_SACK_PASSED = common dso_local global i32 0, align 4
@DUP_ACK_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rack_sendmap* @tcp_rack_output(%struct.tcpcb* %0, %struct.tcp_rack* %1, i64 %2) #0 {
  %4 = alloca %struct.rack_sendmap*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rack_sendmap*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %14 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @RB_EMPTY(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %4, align 8
  br label %127

19:                                               ; preds = %3
  %20 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TF_SENTFIN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %4, align 8
  br label %127

27:                                               ; preds = %19
  %28 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %29 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call %struct.rack_sendmap* @TAILQ_FIRST(i32* %30)
  store %struct.rack_sendmap* %31, %struct.rack_sendmap** %8, align 8
  %32 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %33 = icmp ne %struct.rack_sendmap* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %36 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RACK_ACKED, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %49

42:                                               ; preds = %34, %27
  %43 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %44 = call %struct.rack_sendmap* @rack_find_lowest_rsm(%struct.tcp_rack* %43)
  store %struct.rack_sendmap* %44, %struct.rack_sendmap** %8, align 8
  %45 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %46 = icmp eq %struct.rack_sendmap* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %4, align 8
  br label %127

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %51 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RACK_ACKED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %4, align 8
  br label %127

57:                                               ; preds = %49
  %58 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %59 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RACK_SACK_PASSED, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %4, align 8
  br label %127

65:                                               ; preds = %57
  %66 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %67 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %68 = call i64 @rack_grab_rtt(%struct.tcpcb* %66, %struct.tcp_rack* %67)
  store i64 %68, i64* %10, align 8
  %69 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %70 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, 1
  store i64 %72, i64* %9, align 8
  %73 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %74 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %12, align 8
  %79 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @rack_calc_thresh_rack(%struct.tcp_rack* %79, i64 %80, i64 %81)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %65
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i64 @TSTMP_LT(i64 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %65
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %4, align 8
  br label %127

92:                                               ; preds = %86
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %12, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load i64, i64* %11, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %4, align 8
  br label %127

99:                                               ; preds = %92
  %100 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %101 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DUP_ACK_THRESHOLD, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %107 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RACK_SACK_PASSED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %105
  %113 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %114 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112, %99
  %118 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %119 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %12, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @rack_log_retran_reason(%struct.tcp_rack* %118, %struct.rack_sendmap* %119, i64 %122, i64 %123, i32 1)
  %125 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  store %struct.rack_sendmap* %125, %struct.rack_sendmap** %4, align 8
  br label %127

126:                                              ; preds = %112, %105
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %4, align 8
  br label %127

127:                                              ; preds = %126, %117, %98, %91, %64, %56, %47, %26, %18
  %128 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  ret %struct.rack_sendmap* %128
}

declare dso_local i64 @RB_EMPTY(i32*) #1

declare dso_local %struct.rack_sendmap* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.rack_sendmap* @rack_find_lowest_rsm(%struct.tcp_rack*) #1

declare dso_local i64 @rack_grab_rtt(%struct.tcpcb*, %struct.tcp_rack*) #1

declare dso_local i64 @rack_calc_thresh_rack(%struct.tcp_rack*, i64, i64) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i32 @rack_log_retran_reason(%struct.tcp_rack*, %struct.rack_sendmap*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
