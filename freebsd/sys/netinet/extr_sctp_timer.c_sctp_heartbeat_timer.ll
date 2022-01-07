; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_heartbeat_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_heartbeat_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.sctp_tcb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.sctp_nets = type { i32, i64, i32, %struct.TYPE_6__, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.timeval = type { i32, i32 }

@SCTP_ADDR_PF = common dso_local global i32 0, align 4
@SCTP_ADDR_NOHB = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_heartbeat_timer(%struct.sctp_inpcb* %0, %struct.sctp_tcb* %1, %struct.sctp_nets* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_inpcb*, align 8
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %5, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %7, align 8
  %11 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %12 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SCTP_ADDR_PF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %21 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %26 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %32 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @sctp_free_ifa(i32* %34)
  %36 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %37 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %40 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %30, %24
  %42 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %43 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %44 = call i32 @sctp_backoff_on_timeout(%struct.sctp_tcb* %42, %struct.sctp_nets* %43, i32 1, i32 0, i32 0)
  %45 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %46 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %47 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %48 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %49 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @sctp_threshold_management(%struct.sctp_inpcb* %45, %struct.sctp_tcb* %46, %struct.sctp_nets* %47, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %148

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %19
  %57 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %58 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %63 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %66 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %72 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = call i64 @TAILQ_EMPTY(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %78 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i64 @TAILQ_EMPTY(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %84 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %85 = call i32 @sctp_audit_stream_queues_for_size(%struct.sctp_inpcb* %83, %struct.sctp_tcb* %84)
  br label %86

86:                                               ; preds = %82, %76, %70, %64
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %88 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SCTP_ADDR_NOHB, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %147, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %98 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SCTP_ADDR_PF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %147, label %103

103:                                              ; preds = %96, %93
  %104 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %105 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %111 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %109, %103
  %116 = call i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval* %10)
  %117 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %118 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %117, i32 0, i32 3
  %119 = call i32 @timevalsub(%struct.timeval* %10, %struct.TYPE_6__* %118)
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 1000
  %123 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 1000
  %126 = add nsw i32 %122, %125
  store i32 %126, i32* %9, align 4
  br label %128

127:                                              ; preds = %109
  store i32 -1, i32* %9, align 4
  br label %128

128:                                              ; preds = %127, %115
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %131 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp sge i32 %129, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %128
  %135 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %136 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SCTP_ADDR_PF, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134, %128
  %142 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %143 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %144 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %145 = call i32 @sctp_send_hb(%struct.sctp_tcb* %142, %struct.sctp_nets* %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %134
  br label %147

147:                                              ; preds = %146, %96, %86
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %54
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @sctp_free_ifa(i32*) #1

declare dso_local i32 @sctp_backoff_on_timeout(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32, i32) #1

declare dso_local i64 @sctp_threshold_management(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @sctp_audit_stream_queues_for_size(%struct.sctp_inpcb*, %struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.TYPE_6__*) #1

declare dso_local i32 @sctp_send_hb(%struct.sctp_tcb*, %struct.sctp_nets*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
