; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_init_physical.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_init_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32, i32**, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ciss_lun_report = type { %struct.TYPE_6__*, i32 }

@CISS_OPCODE_REPORT_PHYSICAL_LUNS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%d physical device%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Could not allocate memory for controller map\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Could not allocate memory for physical device map\0A\00", align 1
@CISS_MAX_PHYSTGT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Could not allocate memory for target map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_init_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_init_physical(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca %struct.ciss_lun_report*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = call i32 @debug_called(i32 1)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %11 = load i32, i32* @CISS_OPCODE_REPORT_PHYSICAL_LUNS, align 4
  %12 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ciss_lun_report* @ciss_report_luns(%struct.ciss_softc* %10, i32 %11, i32 %16)
  store %struct.ciss_lun_report* %17, %struct.ciss_lun_report** %3, align 8
  %18 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %19 = icmp eq %struct.ciss_lun_report* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %4, align 4
  br label %238

22:                                               ; preds = %1
  %23 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %24 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ntohl(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i64, i64* @bootverbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i1 [ true, %32 ], [ %39, %37 ]
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %43)
  br label %45

45:                                               ; preds = %40, %22
  %46 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %102, %45
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %48
  %53 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %54 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %52
  %64 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %65 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %74 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @max(i32 %75, i32 %76)
  %78 = getelementptr i8, i8* %77, i64 1
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %81 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %101

82:                                               ; preds = %52
  %83 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %84 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @CISS_EXTRA_BUS2(i64 %91)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i8* @max(i32 %95, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %100 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %82, %63
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %48

105:                                              ; preds = %48
  %106 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %107 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %113 = load i32, i32* @M_NOWAIT, align 4
  %114 = load i32, i32* @M_ZERO, align 4
  %115 = or i32 %113, %114
  %116 = call i8* @malloc(i32 %111, i32 %112, i32 %115)
  %117 = bitcast i8* %116 to %struct.TYPE_6__*
  %118 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %118, i32 0, i32 3
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %119, align 8
  %120 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %121 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = icmp eq %struct.TYPE_6__* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %105
  %125 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %126 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @ENOMEM, align 4
  store i32 %127, i32* %4, align 4
  br label %238

128:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %168, %128
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %171

133:                                              ; preds = %129
  %134 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %135 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %133
  %145 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %146 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %145, i32 0, i32 3
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %149 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %157
  %159 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %160 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  %165 = bitcast %struct.TYPE_6__* %158 to i8*
  %166 = bitcast %struct.TYPE_6__* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 16, i1 false)
  br label %167

167:                                              ; preds = %144, %133
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %129

171:                                              ; preds = %129
  %172 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %173 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 8
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %179 = load i32, i32* @M_NOWAIT, align 4
  %180 = load i32, i32* @M_ZERO, align 4
  %181 = or i32 %179, %180
  %182 = call i8* @malloc(i32 %177, i32 %178, i32 %181)
  %183 = bitcast i8* %182 to i32**
  %184 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %185 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %184, i32 0, i32 2
  store i32** %183, i32*** %185, align 8
  %186 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %187 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %186, i32 0, i32 2
  %188 = load i32**, i32*** %187, align 8
  %189 = icmp eq i32** %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %171
  %191 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %192 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %191, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %193 = load i32, i32* @ENOMEM, align 4
  store i32 %193, i32* %4, align 4
  br label %238

194:                                              ; preds = %171
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %231, %194
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %198 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %234

201:                                              ; preds = %195
  %202 = load i32, i32* @CISS_MAX_PHYSTGT, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 4, %203
  %205 = trunc i64 %204 to i32
  %206 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %207 = load i32, i32* @M_NOWAIT, align 4
  %208 = load i32, i32* @M_ZERO, align 4
  %209 = or i32 %207, %208
  %210 = call i8* @malloc(i32 %205, i32 %206, i32 %209)
  %211 = bitcast i8* %210 to i32*
  %212 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %213 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %212, i32 0, i32 2
  %214 = load i32**, i32*** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32*, i32** %214, i64 %216
  store i32* %211, i32** %217, align 8
  %218 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %219 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %218, i32 0, i32 2
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %201
  %227 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %228 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %227, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %229 = load i32, i32* @ENOMEM, align 4
  store i32 %229, i32* %4, align 4
  br label %238

230:                                              ; preds = %201
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %195

234:                                              ; preds = %195
  %235 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %236 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %237 = call i32 @ciss_filter_physical(%struct.ciss_softc* %235, %struct.ciss_lun_report* %236)
  br label %238

238:                                              ; preds = %234, %226, %190, %124, %20
  %239 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %240 = icmp ne %struct.ciss_lun_report* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %243 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %244 = call i32 @free(%struct.ciss_lun_report* %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %238
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.ciss_lun_report* @ciss_report_luns(%struct.ciss_softc*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @CISS_EXTRA_BUS2(i64) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ciss_filter_physical(%struct.ciss_softc*, %struct.ciss_lun_report*) #1

declare dso_local i32 @free(%struct.ciss_lun_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
