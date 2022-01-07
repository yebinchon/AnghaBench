; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_process_timers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_process_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32 }
%struct.tcp_bbr = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PACE_TMR_MASK = common dso_local global i32 0, align 4
@TCPS_LISTEN = common dso_local global i64 0, align 8
@PACE_PKT_OUTPUT = common dso_local global i32 0, align 4
@PACE_TMR_DELACK = common dso_local global i32 0, align 4
@PACE_TMR_PERSIT = common dso_local global i32 0, align 4
@PACE_TMR_RACK = common dso_local global i32 0, align 4
@PACE_TMR_TLP = common dso_local global i32 0, align 4
@PACE_TMR_RXT = common dso_local global i32 0, align 4
@PACE_TMR_KEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_bbr*, i32, i32)* @bbr_process_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_process_timers(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.tcp_bbr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %14 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %13, i32 0, i32 0
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
  br label %182

22:                                               ; preds = %4
  %23 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCPS_LISTEN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %30 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PACE_PKT_OUTPUT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %182

37:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %182

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %41 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @TSTMP_LT(i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %38
  %47 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %48 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PACE_PKT_OUTPUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  store i32 -1, i32* %10, align 4
  %55 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @bbr_log_to_processing(%struct.tcp_bbr* %55, i32 %56, i32 %57, i32 0, i32 %58)
  store i32 0, i32* %5, align 4
  br label %182

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  store i32 -2, i32* %10, align 4
  %64 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @bbr_log_to_processing(%struct.tcp_bbr* %64, i32 %65, i32 %66, i32 0, i32 %67)
  store i32 0, i32* %5, align 4
  br label %182

69:                                               ; preds = %60
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %12, align 4
  store i32 -3, i32* %10, align 4
  %76 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @bbr_log_to_processing(%struct.tcp_bbr* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @HPTS_USEC_TO_SLOTS(i32 %85)
  %87 = call i32 @tcp_hpts_insert(i32 %84, i32 %86)
  store i32 1, i32* %5, align 4
  br label %182

88:                                               ; preds = %38
  %89 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %90 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @PACE_TMR_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %94 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @PACE_TMR_DELACK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %88
  %103 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %104 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @bbr_timeout_delack(%struct.tcpcb* %103, %struct.tcp_bbr* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  br label %174

107:                                              ; preds = %88
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @PACE_TMR_PERSIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %114 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @bbr_timeout_persist(%struct.tcpcb* %113, %struct.tcp_bbr* %114, i32 %115)
  store i32 %116, i32* %10, align 4
  br label %173

117:                                              ; preds = %107
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @PACE_TMR_RACK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %125 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %128 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @bbr_timeout_rack(%struct.tcpcb* %127, %struct.tcp_bbr* %128, i32 %129)
  store i32 %130, i32* %10, align 4
  br label %172

131:                                              ; preds = %117
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @PACE_TMR_TLP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %139 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  %141 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %142 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @bbr_timeout_tlp(%struct.tcpcb* %141, %struct.tcp_bbr* %142, i32 %143)
  store i32 %144, i32* %10, align 4
  br label %171

145:                                              ; preds = %131
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @PACE_TMR_RXT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %153 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  %155 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %156 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @bbr_timeout_rxt(%struct.tcpcb* %155, %struct.tcp_bbr* %156, i32 %157)
  store i32 %158, i32* %10, align 4
  br label %170

159:                                              ; preds = %145
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @PACE_TMR_KEEP, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %166 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @bbr_timeout_keepalive(%struct.tcpcb* %165, %struct.tcp_bbr* %166, i32 %167)
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %164, %159
  br label %170

170:                                              ; preds = %169, %150
  br label %171

171:                                              ; preds = %170, %136
  br label %172

172:                                              ; preds = %171, %122
  br label %173

173:                                              ; preds = %172, %112
  br label %174

174:                                              ; preds = %173, %102
  %175 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @bbr_log_to_processing(%struct.tcp_bbr* %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %174, %69, %63, %54, %37, %36, %21
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i64 @TSTMP_LT(i32, i32) #1

declare dso_local i32 @bbr_log_to_processing(%struct.tcp_bbr*, i32, i32, i32, i32) #1

declare dso_local i32 @tcp_hpts_insert(i32, i32) #1

declare dso_local i32 @HPTS_USEC_TO_SLOTS(i32) #1

declare dso_local i32 @bbr_timeout_delack(%struct.tcpcb*, %struct.tcp_bbr*, i32) #1

declare dso_local i32 @bbr_timeout_persist(%struct.tcpcb*, %struct.tcp_bbr*, i32) #1

declare dso_local i32 @bbr_timeout_rack(%struct.tcpcb*, %struct.tcp_bbr*, i32) #1

declare dso_local i32 @bbr_timeout_tlp(%struct.tcpcb*, %struct.tcp_bbr*, i32) #1

declare dso_local i32 @bbr_timeout_rxt(%struct.tcpcb*, %struct.tcp_bbr*, i32) #1

declare dso_local i32 @bbr_timeout_keepalive(%struct.tcpcb*, %struct.tcp_bbr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
