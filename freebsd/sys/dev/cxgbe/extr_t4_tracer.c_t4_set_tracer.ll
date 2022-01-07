; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_tracer.c_t4_set_tracer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_tracer.c_t4_set_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }
%struct.t4_tracer = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i32, i32*, i32* }
%struct.trace_params = type { i32, i64, i64, i64, i32, i64, i32*, i32* }

@NTRACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HOLD_LOCK = common dso_local global i32 0, align 4
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4sett\00", align 1
@M_TFMINPKTSIZE = common dso_local global i64 0, align 8
@M_TFLENGTH = common dso_local global i64 0, align 8
@M_TFOFFSET = common dso_local global i64 0, align 8
@A_MPS_TRC_CFG = common dso_local global i32 0, align 4
@F_TRCEN = common dso_local global i32 0, align 4
@LOCK_HELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_tracer(%struct.adapter* %0, %struct.t4_tracer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_tracer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_params, align 8
  %8 = alloca %struct.trace_params*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_tracer* %1, %struct.t4_tracer** %5, align 8
  %9 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %10 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NTRACE, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %269

16:                                               ; preds = %2
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load i32, i32* @HOLD_LOCK, align 4
  %19 = load i32, i32* @SLEEP_OK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @INTR_OK, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @begin_synchronized_op(%struct.adapter* %17, i32* null, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %269

28:                                               ; preds = %16
  %29 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %30 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %37 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @isset(i64* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store %struct.trace_params* null, %struct.trace_params** %8, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %41
  br label %200

45:                                               ; preds = %28
  %46 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %47 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 19
  br i1 %50, label %78, label %51

51:                                               ; preds = %45
  %52 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %53 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 9600
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %59 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @M_TFMINPKTSIZE, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %57
  %65 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %66 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @M_TFLENGTH, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %73 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @M_TFOFFSET, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71, %64, %57, %51, %45
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %6, align 4
  br label %200

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 7
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %85 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @memcpy(i32* %83, i32* %88, i32 8)
  %90 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %94 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = call i32 @memcpy(i32* %92, i32* %97, i32 8)
  %99 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %100 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %105 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 1
  store i64 %107, i64* %108, align 8
  %109 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %110 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 2
  store i64 %112, i64* %113, align 8
  %114 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %115 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 3
  store i64 %117, i64* %118, align 8
  %119 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %120 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 4
  store i32 %126, i32* %127, align 8
  %128 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %129 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %161

133:                                              ; preds = %80
  %134 = load %struct.adapter*, %struct.adapter** %4, align 8
  %135 = getelementptr inbounds %struct.adapter, %struct.adapter* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %135, align 8
  %137 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %138 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %136, i64 %141
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = icmp eq %struct.TYPE_3__* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %133
  %146 = load i32, i32* @EINVAL, align 4
  store i32 %146, i32* %6, align 4
  br label %200

147:                                              ; preds = %133
  %148 = load %struct.adapter*, %struct.adapter** %4, align 8
  %149 = getelementptr inbounds %struct.adapter, %struct.adapter* %148, i32 0, i32 2
  %150 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %149, align 8
  %151 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %152 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %150, i64 %155
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 5
  store i64 %159, i64* %160, align 8
  br label %199

161:                                              ; preds = %80
  %162 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %163 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %165, 8
  br i1 %166, label %167, label %198

167:                                              ; preds = %161
  %168 = load %struct.adapter*, %struct.adapter** %4, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 2
  %170 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %169, align 8
  %171 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %172 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %170, i64 %176
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = icmp eq %struct.TYPE_3__* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %167
  %181 = load i32, i32* @EINVAL, align 4
  store i32 %181, i32* %6, align 4
  br label %200

182:                                              ; preds = %167
  %183 = load %struct.adapter*, %struct.adapter** %4, align 8
  %184 = getelementptr inbounds %struct.adapter, %struct.adapter* %183, i32 0, i32 2
  %185 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %184, align 8
  %186 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %187 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %185, i64 %191
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 4
  %197 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %7, i32 0, i32 5
  store i64 %196, i64* %197, align 8
  br label %198

198:                                              ; preds = %182, %161
  br label %199

199:                                              ; preds = %198, %147
  store %struct.trace_params* %7, %struct.trace_params** %8, align 8
  br label %200

200:                                              ; preds = %199, %180, %145, %78, %44
  %201 = load i32, i32* %6, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %264

203:                                              ; preds = %200
  %204 = load %struct.adapter*, %struct.adapter** %4, align 8
  %205 = load %struct.trace_params*, %struct.trace_params** %8, align 8
  %206 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %207 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %210 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @t4_set_trace_filter(%struct.adapter* %204, %struct.trace_params* %205, i32 %208, i32 %211)
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %263

216:                                              ; preds = %203
  %217 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %218 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %245

221:                                              ; preds = %216
  %222 = load %struct.adapter*, %struct.adapter** %4, align 8
  %223 = getelementptr inbounds %struct.adapter, %struct.adapter* %222, i32 0, i32 0
  %224 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %225 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @setbit(i64* %223, i32 %226)
  %228 = load %struct.adapter*, %struct.adapter** %4, align 8
  %229 = getelementptr inbounds %struct.adapter, %struct.adapter* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %221
  %233 = load %struct.adapter*, %struct.adapter** %4, align 8
  %234 = load i32, i32* @A_MPS_TRC_CFG, align 4
  %235 = load i32, i32* @F_TRCEN, align 4
  %236 = load i32, i32* @F_TRCEN, align 4
  %237 = call i32 @t4_set_reg_field(%struct.adapter* %233, i32 %234, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %232, %221
  %239 = load %struct.adapter*, %struct.adapter** %4, align 8
  %240 = getelementptr inbounds %struct.adapter, %struct.adapter* %239, i32 0, i32 1
  %241 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %242 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @setbit(i64* %240, i32 %243)
  br label %262

245:                                              ; preds = %216
  %246 = load %struct.adapter*, %struct.adapter** %4, align 8
  %247 = getelementptr inbounds %struct.adapter, %struct.adapter* %246, i32 0, i32 1
  %248 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %249 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @clrbit(i64* %247, i32 %250)
  %252 = load %struct.adapter*, %struct.adapter** %4, align 8
  %253 = getelementptr inbounds %struct.adapter, %struct.adapter* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %245
  %257 = load %struct.adapter*, %struct.adapter** %4, align 8
  %258 = load i32, i32* @A_MPS_TRC_CFG, align 4
  %259 = load i32, i32* @F_TRCEN, align 4
  %260 = call i32 @t4_set_reg_field(%struct.adapter* %257, i32 %258, i32 %259, i32 0)
  br label %261

261:                                              ; preds = %256, %245
  br label %262

262:                                              ; preds = %261, %238
  br label %263

263:                                              ; preds = %262, %203
  br label %264

264:                                              ; preds = %263, %200
  %265 = load %struct.adapter*, %struct.adapter** %4, align 8
  %266 = load i32, i32* @LOCK_HELD, align 4
  %267 = call i32 @end_synchronized_op(%struct.adapter* %265, i32 %266)
  %268 = load i32, i32* %6, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %264, %26, %14
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i64 @isset(i64*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @t4_set_trace_filter(%struct.adapter*, %struct.trace_params*, i32, i32) #1

declare dso_local i32 @setbit(i64*, i32) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @clrbit(i64*, i32) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
