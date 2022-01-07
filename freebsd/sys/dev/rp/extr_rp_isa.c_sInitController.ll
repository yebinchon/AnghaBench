; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_isa.c_sInitController.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_isa.c_sInitController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i64, i64*, i32*, i32**, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CTLID_0001 = common dso_local global i32 0, align 4
@rp_nisadevs = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@AIOPID_NULL = common dso_local global i64 0, align 8
@_INDX_ADDR = common dso_local global i32 0, align 4
@_CLK_PRE = common dso_local global i32 0, align 4
@_INDX_DATA = common dso_local global i32 0, align 4
@CLOCK_PRESC = common dso_local global i32 0, align 4
@PERIODIC_ONLY = common dso_local global i32 0, align 4
@sIRQMap = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, i32, i32)* @sInitController to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sInitController(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @CTLID_0001, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @rp_nisadevs, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %22)
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  %27 = load i32**, i32*** %26, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %28)
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %27, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %6
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %38 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %37)
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  store i32 64, i32* %39, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %40)
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  store i32 65, i32* %42, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %43)
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 3
  store i32 66, i32* %45, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %46)
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 4
  store i32 67, i32* %48, align 4
  br label %113

49:                                               ; preds = %6
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %50)
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %57)
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  store i32 %53, i32* %62, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 4
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @rman_get_start(i32* %67)
  %69 = add nsw i32 %68, 64
  %70 = load i32, i32* @rp_nisadevs, align 4
  %71 = mul nsw i32 1024, %70
  %72 = add nsw i32 %69, %71
  store i32 %72, i32* %15, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SYS_RES_IOPORT, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %80)
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 3
  %89 = load i32, i32* @RF_ACTIVE, align 4
  %90 = call i8* @bus_alloc_resource(i32 %75, i32 %76, i32* %85, i32 %86, i32 %88, i32 4, i32 %89)
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 4
  %94 = load i32**, i32*** %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %96 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %95)
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %94, i64 %99
  store i32* %91, i32** %100, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %102 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %101)
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %104)
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  store i32 1, i32* %106, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %107)
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 3
  store i32 2, i32* %109, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %111 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %110)
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  store i32 3, i32* %112, align 4
  br label %113

113:                                              ; preds = %49, %36
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %115 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %114)
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 5
  store i32 0, i32* %116, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %118 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %117)
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 6
  store i32 0, i32* %119, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %121)
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %126)
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %131 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %130)
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @rp_writeio1(%struct.TYPE_18__* %120, i64 %125, i32 %129, i32 %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %136)
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %142 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %141)
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %146 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %145)
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @rp_writeio1(%struct.TYPE_18__* %135, i64 %140, i32 %144, i32 %148)
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %152 = call i32 @sControllerEOI(%struct.TYPE_18__* %150, %struct.TYPE_18__* %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  store i32 0, i32* %14, align 4
  br label %155

155:                                              ; preds = %336, %113
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %339

159:                                              ; preds = %155
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 4
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %215

168:                                              ; preds = %159
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 4
  %178 = load i32**, i32*** %177, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 0
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @rman_get_start(i32* %180)
  %182 = load i32, i32* %14, align 4
  %183 = mul nsw i32 1024, %182
  %184 = add nsw i32 %181, %183
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* @rp_nisadevs, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %168
  store i32 68, i32* %17, align 4
  br label %189

188:                                              ; preds = %168
  store i32 64, i32* %17, align 4
  br label %189

189:                                              ; preds = %188, %187
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @SYS_RES_IOPORT, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %201, %202
  %204 = sub nsw i32 %203, 1
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* @RF_ACTIVE, align 4
  %207 = call i8* @bus_alloc_resource(i32 %192, i32 %193, i32* %199, i32 %200, i32 %204, i32 %205, i32 %206)
  %208 = bitcast i8* %207 to i32*
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 4
  %211 = load i32**, i32*** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  store i32* %208, i32** %214, align 8
  br label %224

215:                                              ; preds = %159
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 4
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @rman_get_start(i32* %222)
  store i32 %223, i32* %16, align 4
  br label %224

224:                                              ; preds = %215, %189
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %227 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %226)
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %232 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %231)
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %236 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %235)
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %14, align 4
  %240 = and i32 %239, 3
  %241 = or i32 %238, %240
  %242 = call i32 @rp_writeio1(%struct.TYPE_18__* %225, i64 %230, i32 %234, i32 %241)
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %245 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %244)
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %250 = call %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__* %249)
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %16, align 4
  %254 = ashr i32 %253, 6
  %255 = call i32 @rp_writeio1(%struct.TYPE_18__* %243, i64 %248, i32 %252, i32 %254)
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %258 = load i32, i32* %14, align 4
  %259 = call i32 @sEnAiop(%struct.TYPE_18__* %256, %struct.TYPE_18__* %257, i32 %258)
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %261 = load i32, i32* %14, align 4
  %262 = call i64 @sReadAiopID(%struct.TYPE_18__* %260, i32 %261)
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 2
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  store i64 %262, i64* %268, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 2
  %271 = load i64*, i64** %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @AIOPID_NULL, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %308

278:                                              ; preds = %224
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %281 = load i32, i32* %14, align 4
  %282 = call i32 @sDisAiop(%struct.TYPE_18__* %279, %struct.TYPE_18__* %280, i32 %281)
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @SYS_RES_IOPORT, align 4
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 4
  %296 = load i32**, i32*** %295, align 8
  %297 = load i32, i32* %14, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32*, i32** %296, i64 %298
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @bus_release_resource(i32 %285, i32 %286, i32 %293, i32* %300)
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 4
  %304 = load i32**, i32*** %303, align 8
  %305 = load i32, i32* %14, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32*, i32** %304, i64 %306
  store i32* null, i32** %307, align 8
  br label %339

308:                                              ; preds = %224
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %310 = load i32, i32* %14, align 4
  %311 = call i32 @sReadAiopNumChan(%struct.TYPE_18__* %309, i32 %310)
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 3
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %14, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %311, i32* %317, align 4
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %319 = load i32, i32* %14, align 4
  %320 = load i32, i32* @_INDX_ADDR, align 4
  %321 = load i32, i32* @_CLK_PRE, align 4
  %322 = call i32 @rp_writeaiop2(%struct.TYPE_18__* %318, i32 %319, i32 %320, i32 %321)
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* @_INDX_DATA, align 4
  %326 = load i32, i32* @CLOCK_PRESC, align 4
  %327 = call i32 @rp_writeaiop1(%struct.TYPE_18__* %323, i32 %324, i32 %325, i32 %326)
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %330, 1
  store i64 %331, i64* %329, align 8
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %334 = load i32, i32* %14, align 4
  %335 = call i32 @sDisAiop(%struct.TYPE_18__* %332, %struct.TYPE_18__* %333, i32 %334)
  br label %336

336:                                              ; preds = %308
  %337 = load i32, i32* %14, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %14, align 4
  br label %155

339:                                              ; preds = %278, %155
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  store i32 -1, i32* %7, align 4
  br label %350

345:                                              ; preds = %339
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %7, align 4
  br label %350

350:                                              ; preds = %345, %344
  %351 = load i32, i32* %7, align 4
  ret i32 %351
}

declare dso_local %struct.TYPE_17__* @ISACTL(%struct.TYPE_18__*) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i8* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rp_writeio1(%struct.TYPE_18__*, i64, i32, i32) #1

declare dso_local i32 @sControllerEOI(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @sEnAiop(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @sReadAiopID(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sDisAiop(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @sReadAiopNumChan(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @rp_writeaiop2(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @rp_writeaiop1(%struct.TYPE_18__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
