; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sched.c_t4_reserve_cl_rl_kbps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sched.c_t4_reserve_cl_rl_kbps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_9__*, %struct.port_info**, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.port_info = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, %struct.tx_cl_rl_params* }
%struct.tx_cl_rl_params = type { i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CLRL_USER = common dso_local global i32 0, align 4
@FW_SCHED_PARAMS_RATE_ABS = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_UNIT_BITRATE = common dso_local global i64 0, align 8
@FW_SCHED_PARAMS_MODE_FLOW = common dso_local global i64 0, align 8
@CLRL_ERR = common dso_local global i32 0, align 4
@CLRL_ASYNC = common dso_local global i32 0, align 4
@CLRL_SYNC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_reserve_cl_rl_kbps(%struct.adapter* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tx_cl_rl_params*, align 8
  %16 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.adapter*, %struct.adapter** %5, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br label %26

26:                                               ; preds = %19, %4
  %27 = phi i1 [ false, %4 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load %struct.adapter*, %struct.adapter** %5, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 2
  %32 = load %struct.port_info**, %struct.port_info*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.port_info*, %struct.port_info** %32, i64 %34
  %36 = load %struct.port_info*, %struct.port_info** %35, align 8
  store %struct.port_info* %36, %struct.port_info** %16, align 8
  %37 = load %struct.port_info*, %struct.port_info** %16, align 8
  %38 = getelementptr inbounds %struct.port_info, %struct.port_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load %struct.port_info*, %struct.port_info** %16, align 8
  %45 = getelementptr inbounds %struct.port_info, %struct.port_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  br label %58

49:                                               ; preds = %26
  %50 = load %struct.port_info*, %struct.port_info** %16, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %49, %43
  %59 = load %struct.port_info*, %struct.port_info** %16, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.port_info*, %struct.port_info** %16, align 8
  %67 = getelementptr inbounds %struct.port_info, %struct.port_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %72, 4
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.port_info*, %struct.port_info** %16, align 8
  %76 = getelementptr inbounds %struct.port_info, %struct.port_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %78, align 8
  %80 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %79, i64 0
  store %struct.tx_cl_rl_params* %80, %struct.tx_cl_rl_params** %15, align 8
  store i32 0, i32* %14, align 4
  %81 = load %struct.adapter*, %struct.adapter** %5, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = call i32 @mtx_lock(i32* %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %166, %74
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.adapter*, %struct.adapter** %5, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %171

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %97 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %102 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CLRL_USER, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %107, %100, %95, %92
  %110 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %111 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @FW_SCHED_PARAMS_RATE_ABS, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %165

115:                                              ; preds = %109
  %116 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %117 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FW_SCHED_PARAMS_UNIT_BITRATE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %165

121:                                              ; preds = %115
  %122 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %123 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @FW_SCHED_PARAMS_MODE_FLOW, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %165

127:                                              ; preds = %121
  %128 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %129 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %165

133:                                              ; preds = %127
  %134 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %135 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %133
  %140 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %141 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %139
  %146 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %147 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32*, i32** %8, align 8
  store i32 %150, i32* %151, align 4
  %152 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %153 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CLRL_ERR, align 4
  %156 = load i32, i32* @CLRL_ASYNC, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @CLRL_SYNC, align 4
  %159 = or i32 %157, %158
  %160 = and i32 %154, %159
  %161 = load i32, i32* @CLRL_ERR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %145
  store i32 1, i32* %14, align 4
  br label %164

164:                                              ; preds = %163, %145
  br label %218

165:                                              ; preds = %139, %133, %127, %121, %115, %109
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  %169 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %170 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %169, i32 1
  store %struct.tx_cl_rl_params* %170, %struct.tx_cl_rl_params** %15, align 8
  br label %84

171:                                              ; preds = %84
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.adapter*, %struct.adapter** %5, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %172, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @MPASS(i32 %179)
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %214

183:                                              ; preds = %171
  %184 = load %struct.port_info*, %struct.port_info** %16, align 8
  %185 = getelementptr inbounds %struct.port_info, %struct.port_info* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %188, i64 %190
  store %struct.tx_cl_rl_params* %191, %struct.tx_cl_rl_params** %15, align 8
  %192 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %193 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load i64, i64* @FW_SCHED_PARAMS_RATE_ABS, align 8
  %195 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %196 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load i64, i64* @FW_SCHED_PARAMS_UNIT_BITRATE, align 8
  %198 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %199 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %198, i32 0, i32 3
  store i64 %197, i64* %199, align 8
  %200 = load i64, i64* @FW_SCHED_PARAMS_MODE_FLOW, align 8
  %201 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %202 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %201, i32 0, i32 4
  store i64 %200, i64* %202, align 8
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %205 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %204, i32 0, i32 5
  store i64 %203, i64* %205, align 8
  %206 = load i32, i32* %12, align 4
  %207 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %208 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %13, align 4
  %210 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %211 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %210, i32 0, i32 7
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32*, i32** %8, align 8
  store i32 %212, i32* %213, align 4
  store i32 1, i32* %14, align 4
  br label %217

214:                                              ; preds = %171
  %215 = load i32*, i32** %8, align 8
  store i32 -1, i32* %215, align 4
  %216 = load i32, i32* @ENOSPC, align 4
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %214, %183
  br label %218

218:                                              ; preds = %217, %164
  %219 = load %struct.adapter*, %struct.adapter** %5, align 8
  %220 = getelementptr inbounds %struct.adapter, %struct.adapter* %219, i32 0, i32 0
  %221 = call i32 @mtx_unlock(i32* %220)
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %218
  %225 = load i32, i32* @CLRL_ASYNC, align 4
  %226 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %15, align 8
  %227 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load %struct.adapter*, %struct.adapter** %5, align 8
  %231 = call i32 @t4_update_tx_sched(%struct.adapter* %230)
  br label %232

232:                                              ; preds = %224, %218
  %233 = load i32, i32* %9, align 4
  ret i32 %233
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @t4_update_tx_sched(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
