; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_logdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_logdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_entry = type { i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"LOG DUMP (%d total operations):\0A\00", align 1
@logcount = common dso_local global i32 0, align 4
@LOGSIZE = common dso_local global i32 0, align 4
@logptr = common dso_local global i32 0, align 4
@oplog = common dso_local global %struct.log_entry* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"\09\09CLOSE/OPEN\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\09\09MS_INVALIDATE\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%d(%d mod 256): \00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"MAPREAD\090x%x thru 0x%x\09(0x%x bytes)\00", align 1
@badoff = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"\09***RRRR***\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"MAPWRITE 0x%x thru 0x%x\09(0x%x bytes)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\09******WWWW\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"READ\090x%x thru 0x%x\09(0x%x bytes)\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"WRITE\090x%x thru 0x%x\09(0x%x bytes)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" HOLE\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" EXTEND\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\09***WWWW\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"TRUNCATE %s\09from 0x%x to 0x%x\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"SKIPPED (no operation)\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"BOGUS LOG ENTRY (operation code = %d)!\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logdump() #0 {
  %1 = alloca %struct.log_entry*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @logcount, align 4
  %10 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @logcount, align 4
  %12 = load i32, i32* @LOGSIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  %15 = load i32, i32* @logcount, align 4
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @logptr, align 4
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @LOGSIZE, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @logcount, align 4
  %23 = load i32, i32* @LOGSIZE, align 4
  %24 = sdiv i32 %22, %23
  %25 = load i32, i32* @LOGSIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %21, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %342, %19
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %345

31:                                               ; preds = %28
  %32 = load %struct.log_entry*, %struct.log_entry** @oplog, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %32, i64 %34
  store %struct.log_entry* %35, %struct.log_entry** %1, align 8
  %36 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %37 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 135
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %42 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 134
  br i1 %44, label %45, label %61

45:                                               ; preds = %40, %31
  %46 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %47 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %53 [
    i32 135, label %49
    i32 134, label %51
  ]

49:                                               ; preds = %45
  %50 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %53

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %45, %51, %49
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @LOGSIZE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %53
  br label %342

61:                                               ; preds = %40
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = srem i32 %63, 256
  %65 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %67 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %326 [
    i32 133, label %69
    i32 132, label %117
    i32 131, label %165
    i32 128, label %213
    i32 129, label %267
    i32 130, label %324
  ]

69:                                               ; preds = %61
  %70 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %71 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %76 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %81 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %79, %84
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %88 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %86, i32 %91)
  %93 = load i32, i32* @badoff, align 4
  %94 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %95 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %93, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %69
  %101 = load i32, i32* @badoff, align 4
  %102 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %103 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %108 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %106, %111
  %113 = icmp slt i32 %101, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %100
  %115 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %100, %69
  br label %331

117:                                              ; preds = %61
  %118 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %119 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %124 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %129 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %127, %132
  %134 = sub nsw i32 %133, 1
  %135 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %136 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %122, i32 %134, i32 %139)
  %141 = load i32, i32* @badoff, align 4
  %142 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %143 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sge i32 %141, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %117
  %149 = load i32, i32* @badoff, align 4
  %150 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %151 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %156 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %154, %159
  %161 = icmp slt i32 %149, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %148
  %163 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %148, %117
  br label %331

165:                                              ; preds = %61
  %166 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %167 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %172 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %177 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %175, %180
  %182 = sub nsw i32 %181, 1
  %183 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %184 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %170, i32 %182, i32 %187)
  %189 = load i32, i32* @badoff, align 4
  %190 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %191 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %189, %194
  br i1 %195, label %196, label %212

196:                                              ; preds = %165
  %197 = load i32, i32* @badoff, align 4
  %198 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %199 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %204 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %202, %207
  %209 = icmp slt i32 %197, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %196
  %211 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %196, %165
  br label %331

213:                                              ; preds = %61
  %214 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %215 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %6, align 4
  %219 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %220 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %7, align 4
  %224 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %225 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %230, %231
  %233 = sub nsw i32 %232, 1
  %234 = load i32, i32* %7, align 4
  %235 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %229, i32 %233, i32 %234)
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %213
  %240 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %250

241:                                              ; preds = %213
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %242, %243
  %245 = load i32, i32* %8, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %241
  br label %250

250:                                              ; preds = %249, %239
  %251 = load i32, i32* @badoff, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp sge i32 %251, %252
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* @badoff, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %266

258:                                              ; preds = %254, %250
  %259 = load i32, i32* @badoff, align 4
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %260, %261
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %258, %254
  br label %331

267:                                              ; preds = %61
  %268 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %269 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %274 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp slt i32 %272, %277
  %279 = zext i1 %278 to i32
  store i32 %279, i32* %4, align 4
  %280 = load i32, i32* %4, align 4
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)
  %284 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %285 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %290 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %283, i32 %288, i32 %293)
  %295 = load i32, i32* @badoff, align 4
  %296 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %297 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %4, align 4
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = zext i1 %301 to i32
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %298, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp sge i32 %295, %305
  br i1 %306, label %307, label %323

307:                                              ; preds = %267
  %308 = load i32, i32* @badoff, align 4
  %309 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %310 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %4, align 4
  %313 = icmp ne i32 %312, 0
  %314 = xor i1 %313, true
  %315 = xor i1 %314, true
  %316 = zext i1 %315 to i32
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %311, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = icmp slt i32 %308, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %307
  %322 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %323

323:                                              ; preds = %321, %307, %267
  br label %331

324:                                              ; preds = %61
  %325 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %331

326:                                              ; preds = %61
  %327 = load %struct.log_entry*, %struct.log_entry** %1, align 8
  %328 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %326, %324, %323, %266, %212, %164, %116
  %332 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %333 = load i32, i32* %5, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %5, align 4
  %335 = load i32, i32* %2, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %2, align 4
  %337 = load i32, i32* %2, align 4
  %338 = load i32, i32* @LOGSIZE, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %331
  store i32 0, i32* %2, align 4
  br label %341

341:                                              ; preds = %340, %331
  br label %342

342:                                              ; preds = %341, %60
  %343 = load i32, i32* %3, align 4
  %344 = add nsw i32 %343, -1
  store i32 %344, i32* %3, align 4
  br label %28

345:                                              ; preds = %28
  ret void
}

declare dso_local i32 @prt(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
