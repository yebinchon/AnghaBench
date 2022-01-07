; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_loadseq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_loadseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ahc_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.cs = type { i32, i32 }

@num_critical_sections = common dso_local global i32 0, align 4
@QOUTFIFO_OFFSET = common dso_local global i64 0, align 8
@QINFIFO_OFFSET = common dso_local global i64 0, align 8
@CACHESIZE_MASK = common dso_local global i64 0, align 8
@INVERTED_CACHESIZE_MASK = common dso_local global i64 0, align 8
@SG_PREFETCH_CNT = common dso_local global i64 0, align 8
@SG_PREFETCH_ALIGN_MASK = common dso_local global i64 0, align 8
@SG_PREFETCH_ADDR_MASK = common dso_local global i64 0, align 8
@patches = common dso_local global %struct.patch* null, align 8
@SEQCTL = common dso_local global i32 0, align 4
@PERRORDIS = common dso_local global i32 0, align 4
@FAILDIS = common dso_local global i32 0, align 4
@FASTMODE = common dso_local global i32 0, align 4
@LOADRAM = common dso_local global i32 0, align 4
@SEQADDR0 = common dso_local global i32 0, align 4
@SEQADDR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"\0A%s: Program too large for instruction memory size of %d!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@critical_sections = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ahc_loadseq: Could not malloc\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c" %d instructions downloaded\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: Features 0x%x, Bugs 0x%x, Flags 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_loadseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_loadseq(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.patch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [7 x i32], align 16
  %16 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %17 = load i32, i32* @num_critical_sections, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca %struct.cs, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %21 = load i32, i32* @num_critical_sections, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %24 = load i32, i32* @num_critical_sections, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = mul nuw i64 4, %22
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %23, i32 0, i32 %28)
  %30 = mul nuw i64 4, %25
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %26, i32 0, i32 %31)
  %33 = load i64, i64* @QOUTFIFO_OFFSET, align 8
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %33
  store i32 0, i32* %34, align 4
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load i64, i64* @QOUTFIFO_OFFSET, align 8
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 32
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %1
  %45 = load i64, i64* @QOUTFIFO_OFFSET, align 8
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i64, i64* @QINFIFO_OFFSET, align 8
  %50 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %49
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = load i64, i64* @CACHESIZE_MASK, align 8
  %56 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %55
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = xor i32 %60, -1
  %62 = load i64, i64* @INVERTED_CACHESIZE_MASK, align 8
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %62
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 8
  br i1 %69, label %70, label %71

70:                                               ; preds = %44
  store i32 8, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i32, i32* %13, align 4
  %73 = load i64, i64* @SG_PREFETCH_CNT, align 8
  %74 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %73
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %75, 1
  %77 = xor i32 %76, -1
  %78 = load i64, i64* @SG_PREFETCH_ALIGN_MASK, align 8
  %79 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %78
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i64, i64* @SG_PREFETCH_ADDR_MASK, align 8
  %83 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %82
  store i32 %81, i32* %83, align 4
  %84 = load %struct.patch*, %struct.patch** @patches, align 8
  store %struct.patch* %84, %struct.patch** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %85 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %86 = load i32, i32* @SEQCTL, align 4
  %87 = load i32, i32* @PERRORDIS, align 4
  %88 = load i32, i32* @FAILDIS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @FASTMODE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @LOADRAM, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @ahc_outb(%struct.ahc_softc* %85, i32 %86, i32 %93)
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %96 = load i32, i32* @SEQADDR0, align 4
  %97 = call i32 @ahc_outb(%struct.ahc_softc* %95, i32 %96, i32 0)
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %99 = load i32, i32* @SEQADDR1, align 4
  %100 = call i32 @ahc_outb(%struct.ahc_softc* %98, i32 %99, i32 0)
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %203, %71
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %103, 1
  br i1 %104, label %105, label %206

105:                                              ; preds = %101
  %106 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @ahc_check_patch(%struct.ahc_softc* %106, %struct.patch** %8, i32 %107, i32* %12)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %203

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %119 = call i8* @ahc_name(%struct.ahc_softc* %118)
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %121 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %119, i32 %122)
  %124 = load i32, i32* @ENOMEM, align 4
  store i32 %124, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %262

125:                                              ; preds = %111
  br label %126

126:                                              ; preds = %193, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @num_critical_sections, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %196

130:                                              ; preds = %126
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @critical_sections, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %130
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %23, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @TRUE, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %139
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %26, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @FALSE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %146
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.cs, %struct.cs* %20, i64 %156
  %158 = getelementptr inbounds %struct.cs, %struct.cs* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 8
  %159 = load i32, i32* @TRUE, align 4
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %26, i64 %161
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %153, %146, %139
  br label %193

166:                                              ; preds = %130
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @critical_sections, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %166
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %23, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @FALSE, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %175
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.cs, %struct.cs* %20, i64 %185
  %187 = getelementptr inbounds %struct.cs, %struct.cs* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* @TRUE, align 4
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %23, i64 %190
  store i32 %188, i32* %191, align 4
  br label %192

192:                                              ; preds = %182, %175, %166
  br label %196

193:                                              ; preds = %165
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  br label %126

196:                                              ; preds = %192, %126
  %197 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %198 = load i32, i32* %11, align 4
  %199 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 0
  %200 = call i32 @ahc_download_instr(%struct.ahc_softc* %197, i32 %198, i32* %199)
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %196, %110
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %101

206:                                              ; preds = %101
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %209 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %235

212:                                              ; preds = %206
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 8
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @M_DEVBUF, align 4
  %219 = load i32, i32* @M_NOWAIT, align 4
  %220 = call i32* @malloc(i32 %217, i32 %218, i32 %219)
  %221 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %222 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %221, i32 0, i32 6
  store i32* %220, i32** %222, align 8
  %223 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %224 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %223, i32 0, i32 6
  %225 = load i32*, i32** %224, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %212
  %228 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %212
  %230 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %231 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %230, i32 0, i32 6
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @memcpy(i32* %232, %struct.cs* %20, i32 %233)
  br label %235

235:                                              ; preds = %229, %206
  %236 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %237 = load i32, i32* @SEQCTL, align 4
  %238 = load i32, i32* @PERRORDIS, align 4
  %239 = load i32, i32* @FAILDIS, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @FASTMODE, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @ahc_outb(%struct.ahc_softc* %236, i32 %237, i32 %242)
  %244 = load i64, i64* @bootverbose, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %235
  %247 = load i32, i32* %14, align 4
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %247)
  %249 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %250 = call i8* @ahc_name(%struct.ahc_softc* %249)
  %251 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %252 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %255 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %258 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %250, i32 %253, i32 %256, i32 %259)
  br label %261

261:                                              ; preds = %246, %235
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %262

262:                                              ; preds = %261, %117
  %263 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #2

declare dso_local i64 @ahc_check_patch(%struct.ahc_softc*, %struct.patch**, i32, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #2

declare dso_local i32 @ahc_download_instr(%struct.ahc_softc*, i32, i32*) #2

declare dso_local i32* @malloc(i32, i32, i32) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @memcpy(i32*, %struct.cs*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
