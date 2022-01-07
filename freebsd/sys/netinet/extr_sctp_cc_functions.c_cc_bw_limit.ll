; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_cc_bw_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_cc_bw_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_nets = type { i32, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }

@sctp_rttvar_bw = common dso_local global i32 0, align 4
@SCTP_INST_GAINING = common dso_local global i32 0, align 4
@SCTP_INST_LOOSING = common dso_local global i32 0, align 4
@SCTP_INST_NEUTRAL = common dso_local global i32 0, align 4
@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@rttvar = common dso_local global i32 0, align 4
@sctp_rttvar_rtt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_nets*, i32)* @cc_bw_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_bw_limit(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_nets*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* @sctp_rttvar_bw, align 4
  %20 = call i32 @SCTP_BASE_SYSCTL(i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %22 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 32
  %27 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %26, %33
  %35 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %36 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %34, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %40 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %48 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %167

53:                                               ; preds = %3
  %54 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %55 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %59 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %64 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %62, %67
  store i32 %68, i32* %12, align 4
  %69 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %70 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %75 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %79 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %133

82:                                               ; preds = %53
  %83 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %84 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %85, 1000
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %82
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sdiv i32 %90, %91
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %16, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @SCTP_INST_GAINING, align 4
  store i32 %100, i32* %17, align 4
  br label %112

101:                                              ; preds = %89
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @SCTP_INST_LOOSING, align 4
  store i32 %108, i32* %17, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @SCTP_INST_NEUTRAL, align 4
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %109, %107
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i32, i32* %17, align 4
  %114 = or i32 720896, %113
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  br label %132

117:                                              ; preds = %82
  %118 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %119 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %125 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %123, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %17, align 4
  %129 = or i32 786432, %128
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %117, %112
  br label %144

133:                                              ; preds = %53
  %134 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %135 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %17, align 4
  %141 = or i32 851968, %140
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %133, %132
  %145 = load i32, i32* @sctp, align 4
  %146 = load i32, i32* @cwnd, align 4
  %147 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %148 = load i32, i32* @rttvar, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %6, align 4
  %151 = shl i32 %150, 32
  %152 = load i32, i32* %13, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %155 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 32
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %163 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @SDT_PROBE5(i32 %145, i32 %146, %struct.sctp_nets* %147, i32 %148, i32 %149, i32 %153, i32 %161, i32 %164, i32 %165)
  br label %173

167:                                              ; preds = %3
  %168 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %169 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %17, align 4
  br label %173

173:                                              ; preds = %167, %144
  %174 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %175 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = ashr i32 %178, %179
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %183 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %186, %187
  %189 = icmp sgt i32 %181, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %173
  %191 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %192 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @cc_bw_increase(%struct.sctp_tcb* %191, %struct.sctp_nets* %192, i32 %193, i32 %194)
  store i32 %195, i32* %18, align 4
  br label %230

196:                                              ; preds = %173
  %197 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %198 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @sctp_rttvar_rtt, align 4
  %203 = call i32 @SCTP_BASE_SYSCTL(i32 %202)
  %204 = ashr i32 %201, %203
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %207 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sub nsw i32 %210, %211
  %213 = icmp slt i32 %205, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %196
  %215 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %216 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %17, align 4
  %221 = call i32 @cc_bw_decrease(%struct.sctp_tcb* %215, %struct.sctp_nets* %216, i32 %217, i32 %218, i32 %219, i32 %220)
  store i32 %221, i32* %18, align 4
  br label %230

222:                                              ; preds = %196
  %223 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %224 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %17, align 4
  %229 = call i32 @cc_bw_same(%struct.sctp_tcb* %223, %struct.sctp_nets* %224, i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %18, align 4
  br label %230

230:                                              ; preds = %222, %214, %190
  %231 = load i32, i32* %17, align 4
  %232 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %233 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  store i32 %231, i32* %235, align 8
  %236 = load i32, i32* %18, align 4
  ret i32 %236
}

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cc_bw_increase(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

declare dso_local i32 @cc_bw_decrease(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32, i32, i32) #1

declare dso_local i32 @cc_bw_same(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
