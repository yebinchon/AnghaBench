; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_after_ecn_echo_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_after_ecn_echo_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sctp_nets = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@SCTP_LAN_LOCAL = common dso_local global i64 0, align 8
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_SAT = common dso_local global i32 0, align 4
@sctps_ecnereducedcwnd = common dso_local global i32 0, align 4
@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@ecn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32, i32)* @sctp_cwnd_update_after_ecn_echo_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cwnd_update_after_ecn_echo_common(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %13 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %124

17:                                               ; preds = %5
  %18 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %19 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCTP_LAN_LOCAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %124

23:                                               ; preds = %17
  %24 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %25 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %124

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %30
  %34 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %35 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %38 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %43 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %46 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sub nsw i32 %44, %49
  %51 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %52 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %58

53:                                               ; preds = %33
  %54 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %55 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %41
  %59 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %60 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %64 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = sub nsw i32 %61, %66
  %68 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %69 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @sctp_logging_level, align 4
  %71 = call i32 @SCTP_BASE_SYSCTL(i32 %70)
  %72 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %58
  %76 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %77 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %78 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %79 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @SCTP_CWND_LOG_FROM_SAT, align 4
  %84 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %76, %struct.sctp_nets* %77, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %58
  br label %121

86:                                               ; preds = %30
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %88 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %93 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %97 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %102 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @sctp_logging_level, align 4
  %106 = call i32 @SCTP_BASE_SYSCTL(i32 %105)
  %107 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %86
  %111 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %112 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %113 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %114 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* @SCTP_CWND_LOG_FROM_SAT, align 4
  %119 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %111, %struct.sctp_nets* %112, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %110, %86
  br label %121

121:                                              ; preds = %120, %85
  %122 = load i32, i32* @sctps_ecnereducedcwnd, align 4
  %123 = call i32 @SCTP_STAT_INCR(i32 %122)
  br label %200

124:                                              ; preds = %23, %17, %5
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %199

127:                                              ; preds = %124
  %128 = load i32, i32* @sctps_ecnereducedcwnd, align 4
  %129 = call i32 @SCTP_STAT_INCR(i32 %128)
  %130 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %131 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sdiv i32 %132, 2
  %134 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %135 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %137 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %140 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %127
  %144 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %145 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %148 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %150 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %143, %127
  %154 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %155 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %158 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @sctp, align 4
  %160 = load i32, i32* @cwnd, align 4
  %161 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %162 = load i32, i32* @ecn, align 4
  %163 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %164 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %168 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 16
  %173 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %174 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %172, %175
  %177 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %180 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @SDT_PROBE5(i32 %159, i32 %160, %struct.sctp_nets* %161, i32 %162, i32 %166, i32 %176, %struct.sctp_nets* %177, i32 %178, i32 %181)
  %183 = load i32, i32* @sctp_logging_level, align 4
  %184 = call i32 @SCTP_BASE_SYSCTL(i32 %183)
  %185 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %153
  %189 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %190 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %191 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %192 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* @SCTP_CWND_LOG_FROM_SAT, align 4
  %197 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %189, %struct.sctp_nets* %190, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %188, %153
  br label %199

199:                                              ; preds = %198, %124
  br label %200

200:                                              ; preds = %199, %121
  ret void
}

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

declare dso_local i32 @SCTP_STAT_INCR(i32) #1

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, %struct.sctp_nets*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
