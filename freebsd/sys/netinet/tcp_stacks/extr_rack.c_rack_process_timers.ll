; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_process_timers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_process_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32 }
%struct.tcp_rack = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PACE_TMR_MASK = common dso_local global i32 0, align 4
@TCPS_LISTEN = common dso_local global i64 0, align 8
@PACE_PKT_OUTPUT = common dso_local global i32 0, align 4
@PACE_TMR_DELACK = common dso_local global i32 0, align 4
@PACE_TMR_RACK = common dso_local global i32 0, align 4
@PACE_TMR_TLP = common dso_local global i32 0, align 4
@PACE_TMR_RXT = common dso_local global i32 0, align 4
@PACE_TMR_PERSIT = common dso_local global i32 0, align 4
@PACE_TMR_KEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_rack*, i32, i64)* @rack_process_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_process_timers(%struct.tcpcb* %0, %struct.tcp_rack* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.tcp_rack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %14 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PACE_TMR_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %180

22:                                               ; preds = %4
  %23 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCPS_LISTEN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %30 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PACE_PKT_OUTPUT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %180

37:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %180

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %41 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @TSTMP_LT(i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %38
  %47 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %48 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PACE_PKT_OUTPUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  store i32 -1, i32* %10, align 4
  %55 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @rack_log_to_processing(%struct.tcp_rack* %55, i32 %56, i32 %57, i32 0)
  store i32 0, i32* %5, align 4
  br label %180

59:                                               ; preds = %46
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  store i32 -2, i32* %10, align 4
  %63 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @rack_log_to_processing(%struct.tcp_rack* %63, i32 %64, i32 %65, i32 0)
  store i32 0, i32* %5, align 4
  br label %180

67:                                               ; preds = %59
  store i32 -3, i32* %10, align 4
  %68 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %69 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @HPTS_MS_TO_SLOTS(i32 %77)
  %79 = call i32 @tcp_hpts_insert(i32 %76, i32 %78)
  %80 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @rack_log_to_processing(%struct.tcp_rack* %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %86 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  store i32 1, i32* %5, align 4
  br label %180

87:                                               ; preds = %38
  %88 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %89 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @PACE_TMR_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %93 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %91
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @PACE_TMR_DELACK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %87
  %102 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %103 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @rack_timeout_delack(%struct.tcpcb* %102, %struct.tcp_rack* %103, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %173

106:                                              ; preds = %87
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @PACE_TMR_RACK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %114 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  %116 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %117 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @rack_timeout_rack(%struct.tcpcb* %116, %struct.tcp_rack* %117, i32 %118)
  store i32 %119, i32* %10, align 4
  br label %172

120:                                              ; preds = %106
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @PACE_TMR_TLP, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %128 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 8
  %130 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %131 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @rack_timeout_tlp(%struct.tcpcb* %130, %struct.tcp_rack* %131, i32 %132)
  store i32 %133, i32* %10, align 4
  br label %171

134:                                              ; preds = %120
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @PACE_TMR_RXT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %142 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %145 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @rack_timeout_rxt(%struct.tcpcb* %144, %struct.tcp_rack* %145, i32 %146)
  store i32 %147, i32* %10, align 4
  br label %170

148:                                              ; preds = %134
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @PACE_TMR_PERSIT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %155 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @rack_timeout_persist(%struct.tcpcb* %154, %struct.tcp_rack* %155, i32 %156)
  store i32 %157, i32* %10, align 4
  br label %169

158:                                              ; preds = %148
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @PACE_TMR_KEEP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %165 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @rack_timeout_keepalive(%struct.tcpcb* %164, %struct.tcp_rack* %165, i32 %166)
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %163, %158
  br label %169

169:                                              ; preds = %168, %153
  br label %170

170:                                              ; preds = %169, %139
  br label %171

171:                                              ; preds = %170, %125
  br label %172

172:                                              ; preds = %171, %111
  br label %173

173:                                              ; preds = %172, %101
  %174 = load %struct.tcp_rack*, %struct.tcp_rack** %7, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @rack_log_to_processing(%struct.tcp_rack* %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %173, %67, %62, %54, %37, %36, %21
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i64 @TSTMP_LT(i32, i32) #1

declare dso_local i32 @rack_log_to_processing(%struct.tcp_rack*, i32, i32, i32) #1

declare dso_local i32 @tcp_hpts_insert(i32, i32) #1

declare dso_local i32 @HPTS_MS_TO_SLOTS(i32) #1

declare dso_local i32 @rack_timeout_delack(%struct.tcpcb*, %struct.tcp_rack*, i32) #1

declare dso_local i32 @rack_timeout_rack(%struct.tcpcb*, %struct.tcp_rack*, i32) #1

declare dso_local i32 @rack_timeout_tlp(%struct.tcpcb*, %struct.tcp_rack*, i32) #1

declare dso_local i32 @rack_timeout_rxt(%struct.tcpcb*, %struct.tcp_rack*, i32) #1

declare dso_local i32 @rack_timeout_persist(%struct.tcpcb*, %struct.tcp_rack*, i32) #1

declare dso_local i32 @rack_timeout_keepalive(%struct.tcpcb*, %struct.tcp_rack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
