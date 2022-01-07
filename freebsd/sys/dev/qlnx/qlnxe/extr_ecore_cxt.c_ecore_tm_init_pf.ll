; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_tm_init_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_tm_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_4__*, %struct.ecore_cxt_mngr* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_cxt_mngr = type { i32 }
%struct.ecore_tm_iids = type { i32, i32, i32, i32* }

@TM_CFG_NUM_IDS = common dso_local global i32 0, align 4
@TM_CFG_PRE_SCAN_OFFSET = common dso_local global i32 0, align 4
@TM_CFG_PARENT_PF = common dso_local global i32 0, align 4
@TM_CFG_CID_PRE_SCAN_ROWS = common dso_local global i32 0, align 4
@TM_REG_CONFIG_CONN_MEM_RT_OFFSET = common dso_local global i32 0, align 4
@TM_REG_PF_ENABLE_CONN_RT_OFFSET = common dso_local global i32 0, align 4
@TM_CFG_TID_OFFSET = common dso_local global i32 0, align 4
@TM_CFG_TID_PRE_SCAN_ROWS = common dso_local global i32 0, align 4
@TM_REG_CONFIG_TASK_MEM_RT_OFFSET = common dso_local global i32 0, align 4
@NUM_TASK_PF_SEGMENTS = common dso_local global i32 0, align 4
@TM_REG_PF_ENABLE_TASK_RT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_tm_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_tm_init_pf(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_cxt_mngr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_tm_iids, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 2
  %12 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %11, align 8
  store %struct.ecore_cxt_mngr* %12, %struct.ecore_cxt_mngr** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = call i32 @OSAL_MEM_ZERO(%struct.ecore_tm_iids* %7, i32 24)
  %14 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %15 = call i32 @ecore_cxt_tm_iids(%struct.ecore_cxt_mngr* %14, %struct.ecore_tm_iids* %7)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %59, %1
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %19 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @TM_CFG_NUM_IDS, align 4
  %25 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @SET_FIELD(i32 %23, i32 %24, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TM_CFG_PRE_SCAN_OFFSET, align 4
  %30 = call i32 @SET_FIELD(i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @TM_CFG_PARENT_PF, align 4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %34 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @SET_FIELD(i32 %31, i32 %32, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @TM_CFG_CID_PRE_SCAN_ROWS, align 4
  %39 = call i32 @SET_FIELD(i32 %37, i32 %38, i32 0)
  %40 = load i32, i32* @TM_REG_CONFIG_CONN_MEM_RT_OFFSET, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %43 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = mul i64 1, %51
  %53 = add i64 %41, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @STORE_RT_REG_AGG(%struct.ecore_hwfn* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %22
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %16

62:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @TM_CFG_NUM_IDS, align 4
  %65 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SET_FIELD(i32 %63, i32 %64, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @TM_CFG_PRE_SCAN_OFFSET, align 4
  %70 = call i32 @SET_FIELD(i32 %68, i32 %69, i32 0)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @TM_CFG_PARENT_PF, align 4
  %73 = call i32 @SET_FIELD(i32 %71, i32 %72, i32 0)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @TM_CFG_CID_PRE_SCAN_ROWS, align 4
  %76 = call i32 @SET_FIELD(i32 %74, i32 %75, i32 0)
  %77 = load i32, i32* @TM_REG_CONFIG_CONN_MEM_RT_OFFSET, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %80 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @NUM_OF_VFS(%struct.TYPE_4__* %81)
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %84 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = mul i64 1, %87
  %89 = add i64 %78, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %6, align 4
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @STORE_RT_REG_AGG(%struct.ecore_hwfn* %91, i32 %92, i32 %93)
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %96 = load i32, i32* @TM_REG_PF_ENABLE_CONN_RT_OFFSET, align 4
  %97 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  %102 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %95, i32 %96, i32 %101)
  %103 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %152, %62
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %108 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %155

111:                                              ; preds = %105
  store i32 0, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @TM_CFG_NUM_IDS, align 4
  %114 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @SET_FIELD(i32 %112, i32 %113, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @TM_CFG_PRE_SCAN_OFFSET, align 4
  %119 = call i32 @SET_FIELD(i32 %117, i32 %118, i32 0)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @TM_CFG_PARENT_PF, align 4
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %123 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @SET_FIELD(i32 %120, i32 %121, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @TM_CFG_TID_OFFSET, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @SET_FIELD(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @TM_CFG_TID_PRE_SCAN_ROWS, align 4
  %132 = call i32 @SET_FIELD(i32 %130, i32 %131, i32 0)
  %133 = load i32, i32* @TM_REG_CONFIG_TASK_MEM_RT_OFFSET, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %136 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = mul i64 1, %144
  %146 = add i64 %134, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %6, align 4
  %148 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @STORE_RT_REG_AGG(%struct.ecore_hwfn* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %111
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %105

155:                                              ; preds = %105
  %156 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %230, %155
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @NUM_TASK_PF_SEGMENTS, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %233

162:                                              ; preds = %158
  store i32 0, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @TM_CFG_NUM_IDS, align 4
  %165 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @SET_FIELD(i32 %163, i32 %164, i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @TM_CFG_PRE_SCAN_OFFSET, align 4
  %174 = call i32 @SET_FIELD(i32 %172, i32 %173, i32 0)
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @TM_CFG_PARENT_PF, align 4
  %177 = call i32 @SET_FIELD(i32 %175, i32 %176, i32 0)
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @TM_CFG_TID_OFFSET, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @SET_FIELD(i32 %178, i32 %179, i32 %180)
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @TM_CFG_TID_PRE_SCAN_ROWS, align 4
  %184 = call i32 @SET_FIELD(i32 %182, i32 %183, i32 0)
  %185 = load i32, i32* @TM_REG_CONFIG_TASK_MEM_RT_OFFSET, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %188 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %187, i32 0, i32 1
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = call i32 @NUM_OF_VFS(%struct.TYPE_4__* %189)
  %191 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %192 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @NUM_TASK_PF_SEGMENTS, align 4
  %195 = mul nsw i32 %193, %194
  %196 = add nsw i32 %190, %195
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = mul i64 1, %199
  %201 = add i64 %186, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %6, align 4
  %203 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @STORE_RT_REG_AGG(%struct.ecore_hwfn* %203, i32 %204, i32 %205)
  %207 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %162
  %215 = load i32, i32* %9, align 4
  %216 = shl i32 1, %215
  br label %218

217:                                              ; preds = %162
  br label %218

218:                                              ; preds = %217, %214
  %219 = phi i32 [ %216, %214 ], [ 0, %217 ]
  %220 = load i32, i32* %4, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %4, align 4
  %222 = getelementptr inbounds %struct.ecore_tm_iids, %struct.ecore_tm_iids* %7, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %218
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  br label %158

233:                                              ; preds = %158
  %234 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %235 = call i64 @ECORE_IS_RDMA_PERSONALITY(%struct.ecore_hwfn* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %237, %233
  %239 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %240 = load i32, i32* @TM_REG_PF_ENABLE_TASK_RT_OFFSET, align 4
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %239, i32 %240, i32 %241)
  ret void
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_tm_iids*, i32) #1

declare dso_local i32 @ecore_cxt_tm_iids(%struct.ecore_cxt_mngr*, %struct.ecore_tm_iids*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @STORE_RT_REG_AGG(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @NUM_OF_VFS(%struct.TYPE_4__*) #1

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i64 @ECORE_IS_RDMA_PERSONALITY(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
