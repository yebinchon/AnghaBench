; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_tcp_rack_xmit_timer_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_tcp_rack_xmit_timer_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.tcpcb = type { i32, i32, i32, i64, i32, i64, i32, i32, i64 }

@RACK_RTT_EMPTY = common dso_local global i32 0, align 4
@USE_RTT_LOW = common dso_local global i64 0, align 8
@USE_RTT_HIGH = common dso_local global i64 0, align 8
@USE_RTT_AVG = common dso_local global i64 0, align 8
@TCP_DELTA_SHIFT = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TCP_RTTVAR_SHIFT = common dso_local global i32 0, align 4
@tcps_rttupdated = common dso_local global i32 0, align 4
@rack_rto_min = common dso_local global i32 0, align 4
@rack_rto_max = common dso_local global i32 0, align 4
@VOI_TCP_RTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, %struct.tcpcb*)* @tcp_rack_xmit_timer_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_rack_xmit_timer_commit(%struct.tcp_rack* %0, %struct.tcpcb* %1) #0 {
  %3 = alloca %struct.tcp_rack*, align 8
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %3, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %4, align 8
  %9 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RACK_RTT_EMPTY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %216

18:                                               ; preds = %2
  %19 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %20 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USE_RTT_LOW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %27 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %67

31:                                               ; preds = %18
  %32 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USE_RTT_HIGH, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %40 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  br label %66

44:                                               ; preds = %31
  %45 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %46 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USE_RTT_AVG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %53 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %58 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = sdiv i32 %56, %62
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %44
  br label %216

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %38
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @rack_log_rtt_sample(%struct.tcp_rack* %72, i32 %73)
  %75 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %76 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %6, align 4
  %78 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.tcp_rack*
  store %struct.tcp_rack* %84, %struct.tcp_rack** %3, align 8
  %85 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %86 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %165

89:                                               ; preds = %71
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %95 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %98 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %99 = sub nsw i32 %97, %98
  %100 = ashr i32 %96, %99
  %101 = sub nsw i32 %93, %100
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %108 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %89
  %112 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %113 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %89
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %125 = load i32, i32* @TCP_DELTA_SHIFT, align 4
  %126 = sub nsw i32 %124, %125
  %127 = ashr i32 %123, %126
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %120
  %140 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %141 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %120
  %143 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %144 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %147 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %150 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %148, %151
  %153 = icmp sgt i32 %145, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %142
  %155 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %156 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %159 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %157, %160
  %162 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %163 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %154, %142
  br label %186

165:                                              ; preds = %71
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %168 = shl i32 %166, %167
  %169 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %170 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %173 = sub nsw i32 %172, 1
  %174 = shl i32 %171, %173
  %175 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %176 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %178 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %181 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %179, %182
  %184 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %185 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %165, %164
  %187 = load i32, i32* @tcps_rttupdated, align 4
  %188 = call i32 @TCPSTAT_INC(i32 %187)
  %189 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %190 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @rack_log_rtt_upd(%struct.tcpcb* %189, %struct.tcp_rack* %190, i32 %191, i32 %192, i32 %193)
  %195 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %196 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %200 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %199, i32 0, i32 5
  store i64 0, i64* %200, align 8
  %201 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %202 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %205 = call i32 @TCP_REXMTVAL(%struct.tcpcb* %204)
  %206 = load i32, i32* @rack_rto_min, align 4
  %207 = call i32 @MSEC_2_TICKS(i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 2
  %210 = call i32 @max(i32 %207, i32 %209)
  %211 = load i32, i32* @rack_rto_max, align 4
  %212 = call i32 @MSEC_2_TICKS(i32 %211)
  %213 = call i32 @TCPT_RANGESET(i32 %203, i32 %205, i32 %210, i32 %212)
  %214 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 3
  store i64 0, i64* %215, align 8
  br label %216

216:                                              ; preds = %186, %64, %17
  ret void
}

declare dso_local i32 @rack_log_rtt_sample(%struct.tcp_rack*, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @rack_log_rtt_upd(%struct.tcpcb*, %struct.tcp_rack*, i32, i32, i32) #1

declare dso_local i32 @TCPT_RANGESET(i32, i32, i32, i32) #1

declare dso_local i32 @TCP_REXMTVAL(%struct.tcpcb*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @MSEC_2_TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
