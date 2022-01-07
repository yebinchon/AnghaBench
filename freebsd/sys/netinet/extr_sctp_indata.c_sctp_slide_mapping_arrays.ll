; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_slide_mapping_arrays.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_slide_mapping_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.sctp_association }
%struct.sctp_association = type { i32, i32, i32, i32, i32*, i32*, i32 }

@sctp_map_lookup_tab = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"huh, cumack 0x%x greater than high-tsn 0x%x in map - should panic?\0A\00", align 1
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_MAP_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_MAP_SLIDE_RESULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"impossible slide lgap: %x slide_end: %x slide_from: %x? at: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Gak, would have overrun map end: %d slide_end: %d\0A\00", align 1
@SCTP_MAP_PREPARE_SLIDE = common dso_local global i32 0, align 4
@SCTP_MAP_SLIDE_FROM = common dso_local global i32 0, align 4
@SCTP_MAP_SLIDE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_slide_mapping_arrays(%struct.sctp_tcb* %0) #0 {
  %2 = alloca %struct.sctp_tcb*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %2, align 8
  %16 = load %struct.sctp_tcb*, %struct.sctp_tcb** %2, align 8
  %17 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %16, i32 0, i32 0
  store %struct.sctp_association* %17, %struct.sctp_association** %3, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %66, %1
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.sctp_tcb*, %struct.sctp_tcb** %2, align 8
  %30 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %27
  %35 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %43 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %41, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %34
  %56 = load i64*, i64** @sctp_map_lookup_tab, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %69

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %27

69:                                               ; preds = %55, %27
  %70 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %71 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, 1
  %75 = add nsw i32 %72, %74
  %76 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %77 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %79 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %82 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @SCTP_TSN_GT(i32 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %127

86:                                               ; preds = %69
  %87 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %88 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %91 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @SCTP_TSN_GT(i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %86
  %96 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %97 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %100 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %104 = call i32 @sctp_print_mapping_array(%struct.sctp_association* %103)
  %105 = load i32, i32* @sctp_logging_level, align 4
  %106 = call i32 @SCTP_BASE_SYSCTL(i32 %105)
  %107 = load i32, i32* @SCTP_MAP_LOGGING_ENABLE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %95
  %111 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %112 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SCTP_MAP_SLIDE_RESULT, align 4
  %115 = call i32 @sctp_log_map(i32 0, i32 6, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %95
  %117 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %118 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %121 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %123 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %126 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %116, %86, %69
  %128 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %129 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %132 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @SCTP_TSN_GT(i32 %130, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %138 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %13, align 4
  br label %144

140:                                              ; preds = %127
  %141 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %142 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %140, %136
  %145 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %146 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %190

150:                                              ; preds = %144
  %151 = load i32, i32* %4, align 4
  %152 = icmp sge i32 %151, 8
  br i1 %152, label %153, label %190

153:                                              ; preds = %150
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 7
  %156 = ashr i32 %155, 3
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %159 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %164 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %162, %153
  %167 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %168 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @memset(i32* %169, i32 0, i32 %170)
  %172 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %173 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @memset(i32* %174, i32 0, i32 %175)
  %177 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %178 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  %181 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %182 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %184 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %187 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %189 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %188, i32 0, i32 6
  store i32 %185, i32* %189, align 8
  br label %397

190:                                              ; preds = %150, %144
  %191 = load i32, i32* %4, align 4
  %192 = icmp sge i32 %191, 8
  br i1 %192, label %193, label %396

193:                                              ; preds = %190
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %197 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @SCTP_CALC_TSN_TO_GAP(i32 %194, i32 %195, i32 %198)
  %200 = load i32, i32* %8, align 4
  %201 = ashr i32 %200, 3
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %193
  %206 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %207 = call i32 @sctp_print_mapping_array(%struct.sctp_association* %206)
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %4, align 4
  %212 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %208, i32 %209, i32 %210, i32 %211)
  br label %397

213:                                              ; preds = %193
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %216 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %214, %217
  br i1 %218, label %219, label %228

219:                                              ; preds = %213
  %220 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %221 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %223)
  %225 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %226 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %219, %213
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %6, align 4
  %231 = sub nsw i32 %229, %230
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* @sctp_logging_level, align 4
  %234 = call i32 @SCTP_BASE_SYSCTL(i32 %233)
  %235 = load i32, i32* @SCTP_MAP_LOGGING_ENABLE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %249

238:                                              ; preds = %228
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @SCTP_MAP_PREPARE_SLIDE, align 4
  %243 = call i32 @sctp_log_map(i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @SCTP_MAP_SLIDE_FROM, align 4
  %248 = call i32 @sctp_log_map(i32 %244, i32 %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %238, %228
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %250, %251
  %253 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %254 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %252, %255
  br i1 %256, label %260, label %257

257:                                              ; preds = %249
  %258 = load i32, i32* %9, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %257, %249
  %261 = load i32, i32* @sctp_logging_level, align 4
  %262 = call i32 @SCTP_BASE_SYSCTL(i32 %261)
  %263 = load i32, i32* @SCTP_MAP_LOGGING_ENABLE, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %260
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %6, align 4
  %269 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %270 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @SCTP_MAP_SLIDE_NONE, align 4
  %273 = call i32 @sctp_log_map(i32 %267, i32 %268, i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %266, %260
  br label %395

275:                                              ; preds = %257
  store i32 0, i32* %15, align 4
  br label %276

276:                                              ; preds = %311, %275
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %9, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %314

280:                                              ; preds = %276
  %281 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %282 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %281, i32 0, i32 5
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* %15, align 4
  %286 = add nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %283, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %291 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %290, i32 0, i32 5
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %289, i32* %295, align 4
  %296 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %297 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %296, i32 0, i32 4
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* %15, align 4
  %301 = add nsw i32 %299, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %298, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %306 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %304, i32* %310, align 4
  br label %311

311:                                              ; preds = %280
  %312 = load i32, i32* %15, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %15, align 4
  br label %276

314:                                              ; preds = %276
  %315 = load i32, i32* %9, align 4
  store i32 %315, i32* %15, align 4
  br label %316

316:                                              ; preds = %335, %314
  %317 = load i32, i32* %15, align 4
  %318 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %319 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %322, label %338

322:                                              ; preds = %316
  %323 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %324 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %323, i32 0, i32 5
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %15, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 0, i32* %328, align 4
  %329 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %330 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %329, i32 0, i32 4
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %15, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 0, i32* %334, align 4
  br label %335

335:                                              ; preds = %322
  %336 = load i32, i32* %15, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %15, align 4
  br label %316

338:                                              ; preds = %316
  %339 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %340 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 1
  %343 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %344 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %342, %345
  br i1 %346, label %347, label %354

347:                                              ; preds = %338
  %348 = load i32, i32* %6, align 4
  %349 = shl i32 %348, 3
  %350 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %351 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = add nsw i32 %352, %349
  store i32 %353, i32* %351, align 8
  br label %354

354:                                              ; preds = %347, %338
  %355 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %356 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = add nsw i32 %357, 1
  %359 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %360 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %358, %361
  br i1 %362, label %363, label %370

363:                                              ; preds = %354
  %364 = load i32, i32* %6, align 4
  %365 = shl i32 %364, 3
  %366 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %367 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %366, i32 0, i32 6
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %363, %354
  %371 = load i32, i32* %6, align 4
  %372 = shl i32 %371, 3
  %373 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %374 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = load i32, i32* @sctp_logging_level, align 4
  %378 = call i32 @SCTP_BASE_SYSCTL(i32 %377)
  %379 = load i32, i32* @SCTP_MAP_LOGGING_ENABLE, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %394

382:                                              ; preds = %370
  %383 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %384 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %387 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %390 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @SCTP_MAP_SLIDE_RESULT, align 4
  %393 = call i32 @sctp_log_map(i32 %385, i32 %388, i32 %391, i32 %392)
  br label %394

394:                                              ; preds = %382, %370
  br label %395

395:                                              ; preds = %394, %274
  br label %396

396:                                              ; preds = %395, %190
  br label %397

397:                                              ; preds = %205, %396, %166
  ret void
}

declare dso_local i64 @SCTP_TSN_GT(i32, i32) #1

declare dso_local i32 @SCTP_PRINTF(i8*, ...) #1

declare dso_local i32 @sctp_print_mapping_array(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_map(i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @SCTP_CALC_TSN_TO_GAP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
