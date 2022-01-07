; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyaparead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyaparead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cyapa_softc* }
%struct.cyapa_softc = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uio = type { i64 }

@CYAPA_FNGR_LEFT = common dso_local global i32 0, align 4
@CYAPA_FNGR_MIDDLE = common dso_local global i32 0, align 4
@CYAPA_FNGR_RIGHT = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cyablk\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @cyaparead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyaparead(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cyapa_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.cdev*, %struct.cdev** %4, align 8
  %18 = getelementptr inbounds %struct.cdev, %struct.cdev* %17, i32 0, i32 0
  %19 = load %struct.cyapa_softc*, %struct.cyapa_softc** %18, align 8
  store %struct.cyapa_softc* %19, %struct.cyapa_softc** %7, align 8
  %20 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %21 = call i32 @cyapa_lock(%struct.cyapa_softc* %20)
  br label %22

22:                                               ; preds = %244, %3
  %23 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %24 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %25 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %24, i32 0, i32 8
  %26 = call i64 @fifo_empty(%struct.cyapa_softc* %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %220

28:                                               ; preds = %22
  %29 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %30 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %35 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %40 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %45 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %48 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %220

51:                                               ; preds = %43, %38, %33, %28
  %52 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %53 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %55 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %58 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %15, align 4
  %60 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %61 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp sgt i32 %63, 255
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  store i32 255, i32* %14, align 4
  %66 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %67 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %51
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, -256
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  store i32 -256, i32* %14, align 4
  %72 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %73 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %15, align 4
  %76 = icmp sgt i32 %75, 255
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  store i32 255, i32* %15, align 4
  %78 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %79 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, -256
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  store i32 -256, i32* %15, align 4
  %84 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %85 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %16, align 4
  %88 = icmp sgt i32 %87, 255
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  store i32 255, i32* %16, align 4
  %90 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %91 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, -256
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  store i32 -256, i32* %16, align 4
  %96 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %97 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %100 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %105 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %110 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %115 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %121 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %124 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %123, i32 0, i32 12
  %125 = call i32 @cyapa_fuzz(i32 %122, i32* %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %128 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %127, i32 0, i32 11
  %129 = call i32 @cyapa_fuzz(i32 %126, i32* %128)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %132 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %131, i32 0, i32 10
  %133 = call i32 @cyapa_fuzz(i32 %130, i32* %132)
  store i32 %133, i32* %16, align 4
  store i32 0, i32* %12, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %98
  %137 = load i32, i32* %12, align 4
  %138 = or i32 %137, 16
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %136, %98
  %140 = load i32, i32* %15, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  %144 = or i32 %143, 32
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, 8
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* %12, align 4
  %154 = or i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %152, %145
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @CYAPA_FNGR_MIDDLE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = or i32 %161, 4
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %160, %155
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @CYAPA_FNGR_RIGHT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* %12, align 4
  %170 = or i32 %169, 2
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %173 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %174 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %173, i32 0, i32 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @fifo_write_char(%struct.cyapa_softc* %172, i32* %174, i32 %175)
  %177 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %178 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %179 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %178, i32 0, i32 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @fifo_write_char(%struct.cyapa_softc* %177, i32* %179, i32 %180)
  %182 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %183 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %184 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %183, i32 0, i32 8
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @fifo_write_char(%struct.cyapa_softc* %182, i32* %184, i32 %185)
  %187 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %188 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  switch i32 %189, label %216 [
    i32 1, label %190
    i32 2, label %196
  ]

190:                                              ; preds = %171
  %191 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %192 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %193 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %192, i32 0, i32 8
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @fifo_write_char(%struct.cyapa_softc* %191, i32* %193, i32 %194)
  br label %217

196:                                              ; preds = %171
  br label %197

197:                                              ; preds = %205, %196
  %198 = load i32, i32* %16, align 4
  %199 = icmp sgt i32 %198, 7
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %16, align 4
  %202 = icmp slt i32 %201, -8
  br label %203

203:                                              ; preds = %200, %197
  %204 = phi i1 [ true, %197 ], [ %202, %200 ]
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = load i32, i32* %16, align 4
  %207 = ashr i32 %206, 1
  store i32 %207, i32* %16, align 4
  br label %197

208:                                              ; preds = %203
  %209 = load i32, i32* %16, align 4
  %210 = and i32 %209, 15
  store i32 %210, i32* %12, align 4
  %211 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %212 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %213 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %212, i32 0, i32 8
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @fifo_write_char(%struct.cyapa_softc* %211, i32* %213, i32 %214)
  br label %217

216:                                              ; preds = %171
  br label %217

217:                                              ; preds = %216, %208, %190
  %218 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %219 = call i32 @cyapa_notify(%struct.cyapa_softc* %218)
  br label %220

220:                                              ; preds = %217, %43, %22
  store i32 0, i32* %8, align 4
  %221 = load %struct.uio*, %struct.uio** %5, align 8
  %222 = getelementptr inbounds %struct.uio, %struct.uio* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  %225 = zext i1 %224 to i32
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %257, %220
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @IO_NDELAY, align 4
  %229 = and i32 %227, %228
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %233 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %234 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %233, i32 0, i32 8
  %235 = call i64 @fifo_empty(%struct.cyapa_softc* %232, i32* %234)
  %236 = icmp ne i64 %235, 0
  br label %237

237:                                              ; preds = %231, %226
  %238 = phi i1 [ false, %226 ], [ %236, %231 ]
  br i1 %238, label %239, label %258

239:                                              ; preds = %237
  %240 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %241 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %22

245:                                              ; preds = %239
  %246 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %247 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %246, i32 0, i32 7
  store i32 1, i32* %247, align 8
  %248 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %249 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %248, i32 0, i32 7
  %250 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %251 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %250, i32 0, i32 9
  %252 = load i32, i32* @PCATCH, align 4
  %253 = call i32 @mtx_sleep(i32* %249, i32* %251, i32 %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %245
  br label %258

257:                                              ; preds = %245
  br label %226

258:                                              ; preds = %256, %237
  br label %259

259:                                              ; preds = %301, %258
  %260 = load i32, i32* %8, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %259
  %263 = load %struct.uio*, %struct.uio** %5, align 8
  %264 = getelementptr inbounds %struct.uio, %struct.uio* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %262
  %268 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %269 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %270 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %269, i32 0, i32 8
  %271 = call i64 @fifo_ready(%struct.cyapa_softc* %268, i32* %270)
  store i64 %271, i64* %10, align 8
  %272 = icmp ugt i64 %271, 0
  br label %273

273:                                              ; preds = %267, %262, %259
  %274 = phi i1 [ false, %262 ], [ false, %259 ], [ %272, %267 ]
  br i1 %274, label %275, label %307

275:                                              ; preds = %273
  %276 = load i64, i64* %10, align 8
  %277 = load %struct.uio*, %struct.uio** %5, align 8
  %278 = getelementptr inbounds %struct.uio, %struct.uio* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ugt i64 %276, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = load %struct.uio*, %struct.uio** %5, align 8
  %283 = getelementptr inbounds %struct.uio, %struct.uio* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %10, align 8
  br label %285

285:                                              ; preds = %281, %275
  %286 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %287 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %288 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %287, i32 0, i32 8
  %289 = call i8* @fifo_read(%struct.cyapa_softc* %286, i32* %288, i64 0)
  store i8* %289, i8** %11, align 8
  %290 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %291 = call i32 @cyapa_unlock(%struct.cyapa_softc* %290)
  %292 = load i8*, i8** %11, align 8
  %293 = load i64, i64* %10, align 8
  %294 = load %struct.uio*, %struct.uio** %5, align 8
  %295 = call i32 @uiomove(i8* %292, i64 %293, %struct.uio* %294)
  store i32 %295, i32* %8, align 4
  %296 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %297 = call i32 @cyapa_lock(%struct.cyapa_softc* %296)
  %298 = load i32, i32* %8, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %285
  br label %307

301:                                              ; preds = %285
  %302 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %303 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %304 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %303, i32 0, i32 8
  %305 = load i64, i64* %10, align 8
  %306 = call i8* @fifo_read(%struct.cyapa_softc* %302, i32* %304, i64 %305)
  store i32 1, i32* %9, align 4
  br label %259

307:                                              ; preds = %300, %273
  %308 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %309 = call i32 @cyapa_unlock(%struct.cyapa_softc* %308)
  %310 = load i32, i32* %8, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load i32, i32* %9, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  %316 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %316, i32* %8, align 4
  br label %317

317:                                              ; preds = %315, %312, %307
  %318 = load i32, i32* %9, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  br label %323

321:                                              ; preds = %317
  %322 = load i32, i32* %8, align 4
  br label %323

323:                                              ; preds = %321, %320
  %324 = phi i32 [ 0, %320 ], [ %322, %321 ]
  ret i32 %324
}

declare dso_local i32 @cyapa_lock(%struct.cyapa_softc*) #1

declare dso_local i64 @fifo_empty(%struct.cyapa_softc*, i32*) #1

declare dso_local i32 @cyapa_fuzz(i32, i32*) #1

declare dso_local i32 @fifo_write_char(%struct.cyapa_softc*, i32*, i32) #1

declare dso_local i32 @cyapa_notify(%struct.cyapa_softc*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i64 @fifo_ready(%struct.cyapa_softc*, i32*) #1

declare dso_local i8* @fifo_read(%struct.cyapa_softc*, i32*, i64) #1

declare dso_local i32 @cyapa_unlock(%struct.cyapa_softc*) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
