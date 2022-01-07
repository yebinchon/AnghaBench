; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_htcp_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_htcp_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@sctp_L2_abc_variable = common dso_local global i32 0, align 4
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_SS = common dso_local global i32 0, align 4
@SCTP_CWND_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_NOADV_SS = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_CA = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_NOADV_CA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @htcp_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_cong_avoid(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %5 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %6 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %7, %10
  br i1 %11, label %12, label %106

12:                                               ; preds = %2
  %13 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %22 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %12
  %26 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @sctp_L2_abc_variable, align 4
  %33 = call i32 @SCTP_BASE_SYSCTL(i32 %32)
  %34 = mul nsw i32 %31, %33
  %35 = icmp sgt i32 %28, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %25
  %37 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %38 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @sctp_L2_abc_variable, align 4
  %41 = call i32 @SCTP_BASE_SYSCTL(i32 %40)
  %42 = mul nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %45 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* @sctp_logging_level, align 4
  %49 = call i32 @SCTP_BASE_SYSCTL(i32 %48)
  %50 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %36
  %54 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %55 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %56 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %57 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SCTP_CWND_LOG_FROM_SS, align 4
  %60 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %54, %struct.sctp_nets* %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %36
  br label %85

62:                                               ; preds = %25
  %63 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %64 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %68 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* @sctp_logging_level, align 4
  %72 = call i32 @SCTP_BASE_SYSCTL(i32 %71)
  %73 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %62
  %77 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %78 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %79 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %80 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SCTP_CWND_LOG_FROM_SS, align 4
  %83 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %77, %struct.sctp_nets* %78, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %62
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %87 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %86, i32 0, i32 0
  %88 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %89 = call i32 @sctp_enforce_cwnd_limit(i32* %87, %struct.sctp_nets* %88)
  br label %105

90:                                               ; preds = %12
  %91 = load i32, i32* @sctp_logging_level, align 4
  %92 = call i32 @SCTP_BASE_SYSCTL(i32 %91)
  %93 = load i32, i32* @SCTP_CWND_LOGGING_ENABLE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %98 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %99 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %100 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SCTP_CWND_LOG_NOADV_SS, align 4
  %103 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %97, %struct.sctp_nets* %98, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %90
  br label %105

105:                                              ; preds = %104, %85
  br label %195

106:                                              ; preds = %2
  %107 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %108 = call i32 @measure_rtt(%struct.sctp_nets* %107)
  %109 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %110 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %113 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %111, %114
  %116 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %117 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %115, %120
  %122 = ashr i32 %121, 7
  %123 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %124 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = sext i32 %126 to i64
  %128 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %129 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sge i64 %127, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %106
  %133 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %134 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %138 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  %141 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %142 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %141, i32 0, i32 5
  store i32 0, i32* %142, align 8
  %143 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %144 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %143, i32 0, i32 0
  %145 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %146 = call i32 @sctp_enforce_cwnd_limit(i32* %144, %struct.sctp_nets* %145)
  %147 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %148 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = call i32 @htcp_alpha_update(%struct.TYPE_4__* %149)
  %151 = load i32, i32* @sctp_logging_level, align 4
  %152 = call i32 @SCTP_BASE_SYSCTL(i32 %151)
  %153 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %132
  %157 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %158 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %159 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %160 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @SCTP_CWND_LOG_FROM_CA, align 4
  %163 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %157, %struct.sctp_nets* %158, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %156, %132
  br label %187

165:                                              ; preds = %106
  %166 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %167 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %170 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load i32, i32* @sctp_logging_level, align 4
  %174 = call i32 @SCTP_BASE_SYSCTL(i32 %173)
  %175 = load i32, i32* @SCTP_CWND_LOGGING_ENABLE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %165
  %179 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %180 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %181 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %182 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @SCTP_CWND_LOG_NOADV_CA, align 4
  %185 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %179, %struct.sctp_nets* %180, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %178, %165
  br label %187

187:                                              ; preds = %186, %164
  %188 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %189 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %192 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  store i32 %190, i32* %194, align 4
  br label %195

195:                                              ; preds = %187, %105
  ret void
}

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

declare dso_local i32 @sctp_enforce_cwnd_limit(i32*, %struct.sctp_nets*) #1

declare dso_local i32 @measure_rtt(%struct.sctp_nets*) #1

declare dso_local i32 @htcp_alpha_update(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
