; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_debug_aq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_debug_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_desc = type { i64, i64, i64, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"AQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\09cookie (h,l) 0x%08X 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09param (0,1)  0x%08X 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09addr (h,l)   0x%08X 0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"AQ CMD Buffer:\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"\090x%04X  %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_debug_aq(%struct.i40e_hw* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_aq_desc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.i40e_aq_desc*
  store %struct.i40e_aq_desc* %19, %struct.i40e_aq_desc** %11, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %5
  br label %317

31:                                               ; preds = %27
  %32 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %33 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @LE16_TO_CPU(i64 %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %39 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @LE16_TO_CPU(i64 %40)
  %42 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %43 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @LE16_TO_CPU(i64 %44)
  %46 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %47 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @LE16_TO_CPU(i64 %48)
  %50 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %51 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @LE16_TO_CPU(i64 %52)
  %54 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %36, i32 %37, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45, i32 %49, i32 %53)
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %58 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LE32_TO_CPU(i32 %59)
  %61 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %62 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @LE32_TO_CPU(i32 %63)
  %65 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %55, i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %64)
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %69 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @LE32_TO_CPU(i32 %72)
  %74 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %75 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @LE32_TO_CPU(i32 %78)
  %80 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %66, i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %79)
  %81 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %84 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @LE32_TO_CPU(i32 %87)
  %89 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %90 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @LE32_TO_CPU(i32 %93)
  %95 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %81, i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %94)
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %317

98:                                               ; preds = %31
  %99 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %11, align 8
  %100 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %317

103:                                              ; preds = %98
  %104 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %104, i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %110, %103
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %234, %112
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 16
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %237

118:                                              ; preds = %113
  %119 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i8*, i8** %12, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8*, i8** %12, align 8
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load i8*, i8** %12, align 8
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 5
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 6
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = load i8*, i8** %12, align 8
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 7
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8*, i8** %12, align 8
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = load i8*, i8** %12, align 8
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 9
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = load i8*, i8** %12, align 8
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 10
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = load i8*, i8** %12, align 8
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 11
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = load i8*, i8** %12, align 8
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 12
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = load i8*, i8** %12, align 8
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 13
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = load i8*, i8** %12, align 8
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 14
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = load i8*, i8** %12, align 8
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 15
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %119, i32 %120, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %127, i32 %134, i32 %141, i32 %148, i32 %155, i32 %162, i32 %169, i32 %176, i32 %183, i32 %190, i32 %197, i32 %204, i32 %211, i32 %218, i32 %225, i32 %232)
  br label %234

234:                                              ; preds = %118
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 16
  store i32 %236, i32* %14, align 4
  br label %113

237:                                              ; preds = %113
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %13, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %316

241:                                              ; preds = %237
  %242 = load i32, i32* %14, align 4
  store i32 %242, i32* %17, align 4
  %243 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %244 = call i32 @memset(i8* %243, i32 0, i32 16)
  store i32 0, i32* %16, align 4
  br label %245

245:                                              ; preds = %258, %241
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* %13, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %263

249:                                              ; preds = %245
  %250 = load i8*, i8** %12, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = load i32, i32* %16, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 %256
  store i8 %254, i8* %257, align 1
  br label %258

258:                                              ; preds = %249
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %16, align 4
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  br label %245

263:                                              ; preds = %245
  %264 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %17, align 4
  %267 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %268 = load i8, i8* %267, align 16
  %269 = sext i8 %268 to i32
  %270 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 1
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 2
  %274 = load i8, i8* %273, align 2
  %275 = sext i8 %274 to i32
  %276 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 3
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 4
  %280 = load i8, i8* %279, align 4
  %281 = sext i8 %280 to i32
  %282 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 5
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 6
  %286 = load i8, i8* %285, align 2
  %287 = sext i8 %286 to i32
  %288 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 7
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 8
  %292 = load i8, i8* %291, align 8
  %293 = sext i8 %292 to i32
  %294 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 9
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 10
  %298 = load i8, i8* %297, align 2
  %299 = sext i8 %298 to i32
  %300 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 11
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 12
  %304 = load i8, i8* %303, align 4
  %305 = sext i8 %304 to i32
  %306 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 13
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 14
  %310 = load i8, i8* %309, align 2
  %311 = sext i8 %310 to i32
  %312 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 15
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %264, i32 %265, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i32 %266, i32 %269, i32 %272, i32 %275, i32 %278, i32 %281, i32 %284, i32 %287, i32 %290, i32 %293, i32 %296, i32 %299, i32 %302, i32 %305, i32 %308, i32 %311, i32 %314)
  br label %316

316:                                              ; preds = %263, %237
  br label %317

317:                                              ; preds = %30, %316, %98, %31
  ret void
}

declare dso_local i32 @LE16_TO_CPU(i64) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, ...) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
