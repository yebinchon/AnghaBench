; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_calc_thresh_tlp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_calc_thresh_tlp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32 }
%struct.tcp_rack = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rack_sendmap = type { i32, i32, i32, i32* }

@rack_enter_tlp_calc = common dso_local global i32 0, align 4
@TLP_USE_ID = common dso_local global i64 0, align 8
@rack_used_tlpmethod = common dso_local global i32 0, align 4
@rack_delayed_ack_time = common dso_local global i32 0, align 4
@TLP_USE_TWO_ONE = common dso_local global i64 0, align 8
@rack_head = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@rack_used_tlpmethod2 = common dso_local global i32 0, align 4
@TLP_USE_TWO_TWO = common dso_local global i64 0, align 8
@rack_rto_max = common dso_local global i32 0, align 4
@rack_tlp_min = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_rack*, %struct.rack_sendmap*, i32)* @rack_calc_thresh_tlp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_calc_thresh_tlp(%struct.tcpcb* %0, %struct.tcp_rack* %1, %struct.rack_sendmap* %2, i32 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca %struct.rack_sendmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rack_sendmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %6, align 8
  store %struct.rack_sendmap* %2, %struct.rack_sendmap** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %4
  %23 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %24 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %32 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %30, %34
  %36 = add nsw i32 %29, %35
  store i32 %36, i32* %10, align 4
  br label %40

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %42 = call i32 @ctf_fixed_maxseg(%struct.tcpcb* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @rack_enter_tlp_calc, align 4
  %44 = call i32 @counter_u64_add(i32 %43, i32 1)
  %45 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %46 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %49 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TLP_USE_ID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %40
  %58 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %66 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %64, %68
  %70 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %71 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %69, %73
  %75 = load i32, i32* %12, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %57
  %78 = load i32, i32* @rack_used_tlpmethod, align 4
  %79 = call i32 @counter_u64_add(i32 %78, i32 1)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sdiv i32 %81, 2
  %83 = add nsw i32 %80, %82
  %84 = load i32, i32* @rack_delayed_ack_time, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %89, %77
  br label %92

92:                                               ; preds = %91, %57
  br label %206

93:                                               ; preds = %40
  %94 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %95 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TLP_USE_TWO_ONE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %178

99:                                               ; preds = %93
  %100 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %101 = load i32, i32* @rack_head, align 4
  %102 = load i32, i32* @r_tnext, align 4
  %103 = call %struct.rack_sendmap* @TAILQ_PREV(%struct.rack_sendmap* %100, i32 %101, i32 %102)
  store %struct.rack_sendmap* %103, %struct.rack_sendmap** %9, align 8
  %104 = load %struct.rack_sendmap*, %struct.rack_sendmap** %9, align 8
  %105 = icmp ne %struct.rack_sendmap* %104, null
  br i1 %105, label %106, label %157

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  %111 = load i32, i32* @rack_used_tlpmethod, align 4
  %112 = call i32 @counter_u64_add(i32 %111, i32 1)
  %113 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %114 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  %117 = load %struct.rack_sendmap*, %struct.rack_sendmap** %9, align 8
  %118 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  %121 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %122 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.rack_sendmap*, %struct.rack_sendmap** %9, align 8
  %129 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @TSTMP_GEQ(i32 %127, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %110
  %138 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %139 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.rack_sendmap*, %struct.rack_sendmap** %9, align 8
  %146 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %144, %151
  store i32 %152, i32* %14, align 4
  br label %153

153:                                              ; preds = %137, %110
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %10, align 4
  br label %177

157:                                              ; preds = %106, %99
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i32, i32* @rack_used_tlpmethod2, align 4
  %163 = call i32 @counter_u64_add(i32 %162, i32 1)
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = sdiv i32 %165, 2
  %167 = add nsw i32 %164, %166
  %168 = load i32, i32* @rack_delayed_ack_time, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %161
  %174 = load i32, i32* %17, align 4
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %173, %161
  br label %176

176:                                              ; preds = %175, %157
  br label %177

177:                                              ; preds = %176, %153
  br label %205

178:                                              ; preds = %93
  %179 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %180 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @TLP_USE_TWO_TWO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %204

184:                                              ; preds = %178
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %184
  %189 = load i32, i32* @rack_used_tlpmethod, align 4
  %190 = call i32 @counter_u64_add(i32 %189, i32 1)
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = sdiv i32 %192, 2
  %194 = add nsw i32 %191, %193
  %195 = load i32, i32* @rack_delayed_ack_time, align 4
  %196 = add nsw i32 %194, %195
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %188
  %201 = load i32, i32* %18, align 4
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %200, %188
  br label %203

203:                                              ; preds = %202, %184
  br label %204

204:                                              ; preds = %203, %178
  br label %205

205:                                              ; preds = %204, %177
  br label %206

206:                                              ; preds = %205, %92
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %209 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @TICKS_2_MSEC(i32 %210)
  %212 = icmp sgt i32 %207, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @TICKS_2_MSEC(i32 %216)
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %213, %206
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* @rack_rto_max, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i32, i32* @rack_rto_max, align 4
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %222, %218
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @rack_tlp_min, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32, i32* @rack_tlp_min, align 4
  store i32 %229, i32* %10, align 4
  br label %230

230:                                              ; preds = %228, %224
  %231 = load i32, i32* %10, align 4
  ret i32 %231
}

declare dso_local i32 @ctf_fixed_maxseg(%struct.tcpcb*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local %struct.rack_sendmap* @TAILQ_PREV(%struct.rack_sendmap*, i32, i32) #1

declare dso_local i64 @TSTMP_GEQ(i32, i32) #1

declare dso_local i32 @TICKS_2_MSEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
