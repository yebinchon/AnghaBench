; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_sbuf_print_witness_badstacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_sbuf_print_witness_badstacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.witness_lock_order_data = type { i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sbuf = type { i32 }
%struct.witness = type { i64, i32, %struct.TYPE_3__*, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@w_mtx = common dso_local global i32 0, align 4
@w_generation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Number of known direct relationships is %d\0A\00", align 1
@w_lohash = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@w_max_used_index = common dso_local global i32 0, align 4
@w_data = common dso_local global %struct.witness_lock_order_data* null, align 8
@w_rmatrix = common dso_local global i32** null, align 8
@WITNESS_REVERSAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"\0ALock order reversal between \22%s\22(%s) and \22%s\22(%s)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Lock order \22%s\22(%s) -> \22%s\22(%s) first seen at:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i64*)* @sbuf_print_witness_badstacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbuf_print_witness_badstacks(%struct.sbuf* %0, i64* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.witness_lock_order_data*, align 8
  %6 = alloca %struct.witness_lock_order_data*, align 8
  %7 = alloca %struct.witness_lock_order_data*, align 8
  %8 = alloca %struct.witness_lock_order_data*, align 8
  %9 = alloca %struct.witness*, align 8
  %10 = alloca %struct.witness*, align 8
  %11 = alloca %struct.witness*, align 8
  %12 = alloca %struct.witness*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.witness_lock_order_data* null, %struct.witness_lock_order_data** %7, align 8
  store %struct.witness_lock_order_data* null, %struct.witness_lock_order_data** %8, align 8
  store %struct.witness* null, %struct.witness** %9, align 8
  store %struct.witness* null, %struct.witness** %10, align 8
  %16 = load i32, i32* @M_TEMP, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.witness_lock_order_data* @malloc(i32 32, i32 %16, i32 %19)
  %21 = bitcast %struct.witness_lock_order_data* %20 to %struct.witness*
  store %struct.witness* %21, %struct.witness** %9, align 8
  %22 = load i32, i32* @M_TEMP, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.witness_lock_order_data* @malloc(i32 32, i32 %22, i32 %25)
  %27 = bitcast %struct.witness_lock_order_data* %26 to %struct.witness*
  store %struct.witness* %27, %struct.witness** %10, align 8
  %28 = load i32, i32* @M_TEMP, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.witness_lock_order_data* @malloc(i32 32, i32 %28, i32 %31)
  store %struct.witness_lock_order_data* %32, %struct.witness_lock_order_data** %7, align 8
  %33 = load i32, i32* @M_TEMP, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.witness_lock_order_data* @malloc(i32 32, i32 %33, i32 %36)
  store %struct.witness_lock_order_data* %37, %struct.witness_lock_order_data** %8, align 8
  %38 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %7, align 8
  %39 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %38, i32 0, i32 1
  %40 = call i32 @stack_zero(i32* %39)
  %41 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %8, align 8
  %42 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %41, i32 0, i32 1
  %43 = call i32 @stack_zero(i32* %42)
  br label %44

44:                                               ; preds = %268, %116, %60, %2
  %45 = call i32 @mtx_lock_spin(i32* @w_mtx)
  %46 = load i32, i32* @w_generation, align 4
  store i32 %46, i32* %13, align 4
  %47 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  %48 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @w_lohash, i32 0, i32 0), align 4
  %50 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 1, i32* %14, align 4
  br label %51

51:                                               ; preds = %260, %44
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @w_max_used_index, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %263

55:                                               ; preds = %51
  %56 = call i32 @mtx_lock_spin(i32* @w_mtx)
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @w_generation, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  %62 = load i64*, i64** %4, align 8
  store i64 0, i64* %62, align 8
  %63 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %64 = call i32 @sbuf_clear(%struct.sbuf* %63)
  br label %44

65:                                               ; preds = %55
  %66 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** @w_data, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %66, i64 %68
  %70 = bitcast %struct.witness_lock_order_data* %69 to %struct.witness*
  store %struct.witness* %70, %struct.witness** %11, align 8
  %71 = load %struct.witness*, %struct.witness** %11, align 8
  %72 = getelementptr inbounds %struct.witness, %struct.witness* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  br label %260

77:                                               ; preds = %65
  %78 = load %struct.witness*, %struct.witness** %9, align 8
  %79 = load %struct.witness*, %struct.witness** %11, align 8
  %80 = bitcast %struct.witness* %78 to i8*
  %81 = bitcast %struct.witness* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 32, i1 false)
  %82 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  %83 = load %struct.witness*, %struct.witness** %9, align 8
  %84 = getelementptr inbounds %struct.witness, %struct.witness* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %260

88:                                               ; preds = %77
  store i32 1, i32* %15, align 4
  br label %89

89:                                               ; preds = %256, %88
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @w_max_used_index, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %259

93:                                               ; preds = %89
  %94 = load i32**, i32*** @w_rmatrix, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @WITNESS_REVERSAL, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %93
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %93
  br label %256

111:                                              ; preds = %106
  %112 = call i32 @mtx_lock_spin(i32* @w_mtx)
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @w_generation, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  %118 = load i64*, i64** %4, align 8
  store i64 0, i64* %118, align 8
  %119 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %120 = call i32 @sbuf_clear(%struct.sbuf* %119)
  br label %44

121:                                              ; preds = %111
  %122 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** @w_data, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %122, i64 %124
  %126 = bitcast %struct.witness_lock_order_data* %125 to %struct.witness*
  store %struct.witness* %126, %struct.witness** %12, align 8
  %127 = load %struct.witness*, %struct.witness** %11, align 8
  %128 = bitcast %struct.witness* %127 to %struct.witness_lock_order_data*
  %129 = load %struct.witness*, %struct.witness** %12, align 8
  %130 = bitcast %struct.witness* %129 to %struct.witness_lock_order_data*
  %131 = call %struct.witness_lock_order_data* @witness_lock_order_get(%struct.witness_lock_order_data* %128, %struct.witness_lock_order_data* %130)
  store %struct.witness_lock_order_data* %131, %struct.witness_lock_order_data** %5, align 8
  %132 = load %struct.witness*, %struct.witness** %12, align 8
  %133 = bitcast %struct.witness* %132 to %struct.witness_lock_order_data*
  %134 = load %struct.witness*, %struct.witness** %11, align 8
  %135 = bitcast %struct.witness* %134 to %struct.witness_lock_order_data*
  %136 = call %struct.witness_lock_order_data* @witness_lock_order_get(%struct.witness_lock_order_data* %133, %struct.witness_lock_order_data* %135)
  store %struct.witness_lock_order_data* %136, %struct.witness_lock_order_data** %6, align 8
  %137 = load %struct.witness*, %struct.witness** %10, align 8
  %138 = load %struct.witness*, %struct.witness** %12, align 8
  %139 = bitcast %struct.witness* %137 to i8*
  %140 = bitcast %struct.witness* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 32, i1 false)
  %141 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  %142 = icmp ne %struct.witness_lock_order_data* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %121
  %144 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %7, align 8
  %145 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %144, i32 0, i32 1
  %146 = call i32 @stack_zero(i32* %145)
  %147 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  %148 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %147, i32 0, i32 1
  %149 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %7, align 8
  %150 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %149, i32 0, i32 1
  %151 = call i32 @stack_copy(i32* %148, i32* %150)
  br label %152

152:                                              ; preds = %143, %121
  %153 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %6, align 8
  %154 = icmp ne %struct.witness_lock_order_data* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %6, align 8
  %157 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  %158 = icmp ne %struct.witness_lock_order_data* %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %8, align 8
  %161 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %160, i32 0, i32 1
  %162 = call i32 @stack_zero(i32* %161)
  %163 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %6, align 8
  %164 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %163, i32 0, i32 1
  %165 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %8, align 8
  %166 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %165, i32 0, i32 1
  %167 = call i32 @stack_copy(i32* %164, i32* %166)
  br label %168

168:                                              ; preds = %159, %155, %152
  %169 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  %170 = load %struct.witness*, %struct.witness** %9, align 8
  %171 = bitcast %struct.witness* %170 to %struct.witness_lock_order_data*
  %172 = load %struct.witness*, %struct.witness** %10, align 8
  %173 = bitcast %struct.witness* %172 to %struct.witness_lock_order_data*
  %174 = call i64 @blessed(%struct.witness_lock_order_data* %171, %struct.witness_lock_order_data* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %256

177:                                              ; preds = %168
  %178 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %179 = load %struct.witness*, %struct.witness** %9, align 8
  %180 = getelementptr inbounds %struct.witness, %struct.witness* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.witness*, %struct.witness** %9, align 8
  %183 = getelementptr inbounds %struct.witness, %struct.witness* %182, i32 0, i32 2
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.witness*, %struct.witness** %10, align 8
  %188 = getelementptr inbounds %struct.witness, %struct.witness* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.witness*, %struct.witness** %10, align 8
  %191 = getelementptr inbounds %struct.witness, %struct.witness* %190, i32 0, i32 2
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %178, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %181, i32 %186, i32 %189, i32 %194)
  %196 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  %197 = icmp ne %struct.witness_lock_order_data* %196, null
  br i1 %197, label %198, label %223

198:                                              ; preds = %177
  %199 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %200 = load %struct.witness*, %struct.witness** %9, align 8
  %201 = getelementptr inbounds %struct.witness, %struct.witness* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.witness*, %struct.witness** %9, align 8
  %204 = getelementptr inbounds %struct.witness, %struct.witness* %203, i32 0, i32 2
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.witness*, %struct.witness** %10, align 8
  %209 = getelementptr inbounds %struct.witness, %struct.witness* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.witness*, %struct.witness** %10, align 8
  %212 = getelementptr inbounds %struct.witness, %struct.witness* %211, i32 0, i32 2
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %199, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %202, i32 %207, i32 %210, i32 %215)
  %217 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %218 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %7, align 8
  %219 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %218, i32 0, i32 1
  %220 = call i32 @stack_sbuf_print(%struct.sbuf* %217, i32* %219)
  %221 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %222 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %223

223:                                              ; preds = %198, %177
  %224 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %6, align 8
  %225 = icmp ne %struct.witness_lock_order_data* %224, null
  br i1 %225, label %226, label %255

226:                                              ; preds = %223
  %227 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %6, align 8
  %228 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  %229 = icmp ne %struct.witness_lock_order_data* %227, %228
  br i1 %229, label %230, label %255

230:                                              ; preds = %226
  %231 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %232 = load %struct.witness*, %struct.witness** %10, align 8
  %233 = getelementptr inbounds %struct.witness, %struct.witness* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.witness*, %struct.witness** %10, align 8
  %236 = getelementptr inbounds %struct.witness, %struct.witness* %235, i32 0, i32 2
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.witness*, %struct.witness** %9, align 8
  %241 = getelementptr inbounds %struct.witness, %struct.witness* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.witness*, %struct.witness** %9, align 8
  %244 = getelementptr inbounds %struct.witness, %struct.witness* %243, i32 0, i32 2
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %231, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %234, i32 %239, i32 %242, i32 %247)
  %249 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %250 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %8, align 8
  %251 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %250, i32 0, i32 1
  %252 = call i32 @stack_sbuf_print(%struct.sbuf* %249, i32* %251)
  %253 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %254 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %253, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %255

255:                                              ; preds = %230, %226, %223
  br label %256

256:                                              ; preds = %255, %176, %110
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  br label %89

259:                                              ; preds = %89
  br label %260

260:                                              ; preds = %259, %87, %75
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  br label %51

263:                                              ; preds = %51
  %264 = call i32 @mtx_lock_spin(i32* @w_mtx)
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* @w_generation, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  %270 = load i64*, i64** %4, align 8
  store i64 0, i64* %270, align 8
  %271 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %272 = call i32 @sbuf_clear(%struct.sbuf* %271)
  br label %44

273:                                              ; preds = %263
  %274 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  %275 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %7, align 8
  %276 = load i32, i32* @M_TEMP, align 4
  %277 = call i32 @free(%struct.witness_lock_order_data* %275, i32 %276)
  %278 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %8, align 8
  %279 = load i32, i32* @M_TEMP, align 4
  %280 = call i32 @free(%struct.witness_lock_order_data* %278, i32 %279)
  %281 = load %struct.witness*, %struct.witness** %9, align 8
  %282 = bitcast %struct.witness* %281 to %struct.witness_lock_order_data*
  %283 = load i32, i32* @M_TEMP, align 4
  %284 = call i32 @free(%struct.witness_lock_order_data* %282, i32 %283)
  %285 = load %struct.witness*, %struct.witness** %10, align 8
  %286 = bitcast %struct.witness* %285 to %struct.witness_lock_order_data*
  %287 = load i32, i32* @M_TEMP, align 4
  %288 = call i32 @free(%struct.witness_lock_order_data* %286, i32 %287)
  ret void
}

declare dso_local %struct.witness_lock_order_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @stack_zero(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.witness_lock_order_data* @witness_lock_order_get(%struct.witness_lock_order_data*, %struct.witness_lock_order_data*) #1

declare dso_local i32 @stack_copy(i32*, i32*) #1

declare dso_local i64 @blessed(%struct.witness_lock_order_data*, %struct.witness_lock_order_data*) #1

declare dso_local i32 @stack_sbuf_print(%struct.sbuf*, i32*) #1

declare dso_local i32 @free(%struct.witness_lock_order_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
