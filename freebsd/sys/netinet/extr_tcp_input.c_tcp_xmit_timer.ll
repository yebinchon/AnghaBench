; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_xmit_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_xmit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32, i32, i64, i32, i32, i64, i32, i32 }

@tcps_rttupdated = common dso_local global i32 0, align 4
@TCP_RTT_INVALIDATE = common dso_local global i64 0, align 8
@TCP_DELTA_SHIFT = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TCP_RTTVAR_SHIFT = common dso_local global i32 0, align 4
@TCPTV_REXMTMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_xmit_timer(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @INP_WLOCK_ASSERT(i32 %8)
  %10 = load i32, i32* @tcps_rttupdated, align 4
  %11 = call i32 @TCPSTAT_INC(i32 %10)
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %96

20:                                               ; preds = %2
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_RTT_INVALIDATE, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %96

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %35 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %36 = sub nsw i32 %34, %35
  %37 = ashr i32 %33, %36
  %38 = sub nsw i32 %30, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %26
  %46 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %26
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %59 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %60 = sub nsw i32 %58, %59
  %61 = ashr i32 %57, %60
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %54
  %74 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %78 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %81 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %79, %82
  %84 = icmp sgt i32 %76, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %73
  %86 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  %93 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %73
  br label %117

96:                                               ; preds = %20, %2
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %101 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %104 = sub nsw i32 %103, 1
  %105 = shl i32 %102, %104
  %106 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %109 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %112 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %110, %113
  %115 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %96, %95
  %118 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %119 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %118, i32 0, i32 7
  store i64 0, i64* %119, align 8
  %120 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %121 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %123 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %126 = call i32 @TCP_REXMTVAL(%struct.tcpcb* %125)
  %127 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %128 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 2
  %132 = call i32 @max(i32 %129, i32 %131)
  %133 = load i32, i32* @TCPTV_REXMTMAX, align 4
  %134 = call i32 @TCPT_RANGESET(i32 %124, i32 %126, i32 %132, i32 %133)
  %135 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TCPT_RANGESET(i32, i32, i32, i32) #1

declare dso_local i32 @TCP_REXMTVAL(%struct.tcpcb*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
