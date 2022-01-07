; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapawrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapawrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cyapa_softc* }
%struct.cyapa_softc = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uio = type { i64 }

@CYAPA_FNGR_LEFT = common dso_local global i32 0, align 4
@CYAPA_FNGR_MIDDLE = common dso_local global i32 0, align 4
@CYAPA_FNGR_RIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown command %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @cyapawrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapawrite(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cyapa_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.cdev*, %struct.cdev** %4, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.cyapa_softc*, %struct.cyapa_softc** %14, align 8
  store %struct.cyapa_softc* %15, %struct.cyapa_softc** %7, align 8
  br label %16

16:                                               ; preds = %505, %3
  %17 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %18 = call i32 @cyapa_lock(%struct.cyapa_softc* %17)
  br label %19

19:                                               ; preds = %58, %16
  %20 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %21 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %22 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %21, i32 0, i32 13
  %23 = call i64 @fifo_space(%struct.cyapa_softc* %20, i32* %22)
  store i64 %23, i64* %10, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.uio*, %struct.uio** %5, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i1 [ false, %19 ], [ %29, %25 ]
  br i1 %31, label %32, label %64

32:                                               ; preds = %30
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.uio*, %struct.uio** %5, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.uio*, %struct.uio** %5, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %44 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %45 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %44, i32 0, i32 13
  %46 = call i8* @fifo_write(%struct.cyapa_softc* %43, i32* %45, i64 0)
  store i8* %46, i8** %12, align 8
  %47 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %48 = call i32 @cyapa_unlock(%struct.cyapa_softc* %47)
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.uio*, %struct.uio** %5, align 8
  %52 = call i32 @uiomove(i8* %49, i64 %50, %struct.uio* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %54 = call i32 @cyapa_lock(%struct.cyapa_softc* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %64

58:                                               ; preds = %42
  %59 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %60 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %61 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %60, i32 0, i32 13
  %62 = load i64, i64* %10, align 8
  %63 = call i8* @fifo_write(%struct.cyapa_softc* %59, i32* %61, i64 %62)
  br label %19

64:                                               ; preds = %57, %30
  %65 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %66 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %67 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %66, i32 0, i32 13
  %68 = call i64 @fifo_ready(%struct.cyapa_softc* %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %489, %64
  %72 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %73 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %74 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %73, i32 0, i32 13
  %75 = call i64 @fifo_ready(%struct.cyapa_softc* %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br label %83

83:                                               ; preds = %80, %77, %71
  %84 = phi i1 [ false, %77 ], [ false, %71 ], [ %82, %80 ]
  br i1 %84, label %85, label %492

85:                                               ; preds = %83
  %86 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %87 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %92 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %93 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %92, i32 0, i32 13
  %94 = call i8* @fifo_read_char(%struct.cyapa_softc* %91, i32* %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %97 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %90, %85
  %99 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %100 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %476 [
    i32 230, label %102
    i32 231, label %109
    i32 232, label %116
    i32 233, label %148
    i32 234, label %220
    i32 235, label %233
    i32 236, label %240
    i32 238, label %245
    i32 240, label %250
    i32 242, label %263
    i32 243, label %293
    i32 244, label %408
    i32 245, label %415
    i32 246, label %422
    i32 254, label %445
    i32 255, label %452
  ]

102:                                              ; preds = %98
  %103 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %104 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %106 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %107 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %106, i32 0, i32 12
  %108 = call i32 @fifo_write_char(%struct.cyapa_softc* %105, i32* %107, i32 250)
  br label %481

109:                                              ; preds = %98
  %110 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %111 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %113 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %114 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %113, i32 0, i32 12
  %115 = call i32 @fifo_write_char(%struct.cyapa_softc* %112, i32* %114, i32 250)
  br label %481

116:                                              ; preds = %98
  %117 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %118 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %123 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %122, i32 0, i32 2
  store i64 1, i64* %123, align 8
  %124 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %125 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %126 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %125, i32 0, i32 12
  %127 = call i32 @fifo_write_char(%struct.cyapa_softc* %124, i32* %126, i32 250)
  br label %128

128:                                              ; preds = %121, %116
  %129 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %130 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %131 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %130, i32 0, i32 13
  %132 = call i64 @fifo_ready(%struct.cyapa_softc* %129, i32* %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  br label %481

135:                                              ; preds = %128
  %136 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %137 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %138 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %137, i32 0, i32 13
  %139 = call i8* @fifo_read_char(%struct.cyapa_softc* %136, i32* %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %142 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 4
  %144 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %145 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %146 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %145, i32 0, i32 12
  %147 = call i32 @fifo_write_char(%struct.cyapa_softc* %144, i32* %146, i32 250)
  br label %481

148:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  %149 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %150 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %11, align 4
  %155 = or i32 %154, 64
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %158 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %11, align 4
  %163 = or i32 %162, 32
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %161, %156
  %165 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %166 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* %11, align 4
  %171 = or i32 %170, 16
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %169, %164
  %173 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %174 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load i32, i32* %11, align 4
  %181 = or i32 %180, 4
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %179, %172
  %183 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %184 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @CYAPA_FNGR_MIDDLE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load i32, i32* %11, align 4
  %191 = or i32 %190, 2
  store i32 %191, i32* %11, align 4
  br label %192

192:                                              ; preds = %189, %182
  %193 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %194 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @CYAPA_FNGR_RIGHT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = load i32, i32* %11, align 4
  %201 = or i32 %200, 1
  store i32 %201, i32* %11, align 4
  br label %202

202:                                              ; preds = %199, %192
  %203 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %204 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %205 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %204, i32 0, i32 12
  %206 = call i32 @fifo_write_char(%struct.cyapa_softc* %203, i32* %205, i32 250)
  %207 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %208 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %209 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %208, i32 0, i32 12
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @fifo_write_char(%struct.cyapa_softc* %207, i32* %209, i32 %210)
  %212 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %213 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %214 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %213, i32 0, i32 12
  %215 = call i32 @fifo_write_char(%struct.cyapa_softc* %212, i32* %214, i32 0)
  %216 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %217 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %218 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %217, i32 0, i32 12
  %219 = call i32 @fifo_write_char(%struct.cyapa_softc* %216, i32* %218, i32 100)
  br label %481

220:                                              ; preds = %98
  %221 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %222 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %221, i32 0, i32 3
  store i32 0, i32* %222, align 8
  %223 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %224 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %225 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %224, i32 0, i32 12
  %226 = call i32 @fifo_write_char(%struct.cyapa_softc* %223, i32* %225, i32 250)
  %227 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %228 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %227, i32 0, i32 11
  store i32 0, i32* %228, align 8
  %229 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %230 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %229, i32 0, i32 10
  store i32 0, i32* %230, align 4
  %231 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %232 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %231, i32 0, i32 9
  store i32 0, i32* %232, align 8
  br label %481

233:                                              ; preds = %98
  %234 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %235 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %236 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %235, i32 0, i32 12
  %237 = call i32 @fifo_write_char(%struct.cyapa_softc* %234, i32* %236, i32 250)
  %238 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %239 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %238, i32 0, i32 6
  store i32 1, i32* %239, align 4
  br label %481

240:                                              ; preds = %98
  %241 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %242 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %243 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %242, i32 0, i32 12
  %244 = call i32 @fifo_write_char(%struct.cyapa_softc* %241, i32* %243, i32 250)
  br label %481

245:                                              ; preds = %98
  %246 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %247 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %248 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %247, i32 0, i32 12
  %249 = call i32 @fifo_write_char(%struct.cyapa_softc* %246, i32* %248, i32 250)
  br label %481

250:                                              ; preds = %98
  %251 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %252 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %251, i32 0, i32 3
  store i32 1, i32* %252, align 8
  %253 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %254 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %255 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %254, i32 0, i32 12
  %256 = call i32 @fifo_write_char(%struct.cyapa_softc* %253, i32* %255, i32 250)
  %257 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %258 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %257, i32 0, i32 11
  store i32 0, i32* %258, align 8
  %259 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %260 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %259, i32 0, i32 10
  store i32 0, i32* %260, align 4
  %261 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %262 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %261, i32 0, i32 9
  store i32 0, i32* %262, align 8
  br label %481

263:                                              ; preds = %98
  %264 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %265 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %266 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %265, i32 0, i32 12
  %267 = call i32 @fifo_write_char(%struct.cyapa_softc* %264, i32* %266, i32 250)
  %268 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %269 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  switch i32 %270, label %281 [
    i32 1, label %271
    i32 2, label %276
  ]

271:                                              ; preds = %263
  %272 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %273 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %274 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %273, i32 0, i32 12
  %275 = call i32 @fifo_write_char(%struct.cyapa_softc* %272, i32* %274, i32 3)
  br label %286

276:                                              ; preds = %263
  %277 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %278 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %279 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %278, i32 0, i32 12
  %280 = call i32 @fifo_write_char(%struct.cyapa_softc* %277, i32* %279, i32 4)
  br label %286

281:                                              ; preds = %263
  %282 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %283 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %284 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %283, i32 0, i32 12
  %285 = call i32 @fifo_write_char(%struct.cyapa_softc* %282, i32* %284, i32 0)
  br label %286

286:                                              ; preds = %281, %276, %271
  %287 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %288 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %287, i32 0, i32 11
  store i32 0, i32* %288, align 8
  %289 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %290 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %289, i32 0, i32 10
  store i32 0, i32* %290, align 4
  %291 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %292 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %291, i32 0, i32 9
  store i32 0, i32* %292, align 8
  br label %481

293:                                              ; preds = %98
  %294 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %295 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %293
  %299 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %300 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %299, i32 0, i32 2
  store i64 1, i64* %300, align 8
  %301 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %302 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %303 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %302, i32 0, i32 12
  %304 = call i32 @fifo_write_char(%struct.cyapa_softc* %301, i32* %303, i32 250)
  br label %305

305:                                              ; preds = %298, %293
  %306 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %307 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %308 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %307, i32 0, i32 13
  %309 = call i64 @fifo_ready(%struct.cyapa_softc* %306, i32* %308)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  store i32 0, i32* %9, align 4
  br label %481

312:                                              ; preds = %305
  %313 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %314 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %315 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %314, i32 0, i32 13
  %316 = call i8* @fifo_read_char(%struct.cyapa_softc* %313, i32* %315)
  %317 = ptrtoint i8* %316 to i32
  %318 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %319 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %318, i32 0, i32 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 1
  store i32 %317, i32* %320, align 4
  %321 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %322 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %323 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %322, i32 0, i32 12
  %324 = call i32 @fifo_write_char(%struct.cyapa_softc* %321, i32* %323, i32 250)
  %325 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %326 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %312
  %330 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %331 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %330, i32 0, i32 8
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 200
  br i1 %334, label %335, label %338

335:                                              ; preds = %329
  %336 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %337 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %336, i32 0, i32 7
  store i32 -1, i32* %337, align 8
  br label %398

338:                                              ; preds = %329, %312
  %339 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %340 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 8
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %352

343:                                              ; preds = %338
  %344 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %345 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %344, i32 0, i32 8
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = icmp eq i32 %347, 100
  br i1 %348, label %349, label %352

349:                                              ; preds = %343
  %350 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %351 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %350, i32 0, i32 7
  store i32 -2, i32* %351, align 8
  br label %397

352:                                              ; preds = %343, %338
  %353 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %354 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %353, i32 0, i32 7
  %355 = load i32, i32* %354, align 8
  %356 = icmp eq i32 %355, -1
  br i1 %356, label %357, label %366

357:                                              ; preds = %352
  %358 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %359 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %358, i32 0, i32 8
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 200
  br i1 %362, label %363, label %366

363:                                              ; preds = %357
  %364 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %365 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %364, i32 0, i32 7
  store i32 -3, i32* %365, align 8
  br label %396

366:                                              ; preds = %357, %352
  %367 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %368 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %367, i32 0, i32 7
  %369 = load i32, i32* %368, align 8
  %370 = icmp eq i32 %369, -2
  br i1 %370, label %371, label %380

371:                                              ; preds = %366
  %372 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %373 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %372, i32 0, i32 8
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = icmp eq i32 %375, 80
  br i1 %376, label %377, label %380

377:                                              ; preds = %371
  %378 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %379 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %378, i32 0, i32 7
  store i32 1, i32* %379, align 8
  br label %395

380:                                              ; preds = %371, %366
  %381 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %382 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %381, i32 0, i32 7
  %383 = load i32, i32* %382, align 8
  %384 = icmp eq i32 %383, -3
  br i1 %384, label %385, label %394

385:                                              ; preds = %380
  %386 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %387 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %386, i32 0, i32 8
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = icmp eq i32 %389, 80
  br i1 %390, label %391, label %394

391:                                              ; preds = %385
  %392 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %393 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %392, i32 0, i32 7
  store i32 2, i32* %393, align 8
  br label %394

394:                                              ; preds = %391, %385, %380
  br label %395

395:                                              ; preds = %394, %377
  br label %396

396:                                              ; preds = %395, %363
  br label %397

397:                                              ; preds = %396, %349
  br label %398

398:                                              ; preds = %397, %335
  %399 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %400 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %399, i32 0, i32 8
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %398
  %405 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %406 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %405, i32 0, i32 7
  store i32 1, i32* %406, align 8
  br label %407

407:                                              ; preds = %404, %398
  br label %481

408:                                              ; preds = %98
  %409 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %410 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %411 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %410, i32 0, i32 12
  %412 = call i32 @fifo_write_char(%struct.cyapa_softc* %409, i32* %411, i32 250)
  %413 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %414 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %413, i32 0, i32 4
  store i32 1, i32* %414, align 4
  br label %481

415:                                              ; preds = %98
  %416 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %417 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %418 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %417, i32 0, i32 12
  %419 = call i32 @fifo_write_char(%struct.cyapa_softc* %416, i32* %418, i32 250)
  %420 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %421 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %420, i32 0, i32 4
  store i32 1, i32* %421, align 4
  br label %481

422:                                              ; preds = %98
  %423 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %424 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %425 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %424, i32 0, i32 12
  %426 = call i32 @fifo_write_char(%struct.cyapa_softc* %423, i32* %425, i32 250)
  %427 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %428 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %427, i32 0, i32 8
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 1
  store i32 100, i32* %429, align 4
  %430 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %431 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %430, i32 0, i32 8
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 0
  store i32 4, i32* %432, align 4
  %433 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %434 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %433, i32 0, i32 1
  store i32 0, i32* %434, align 4
  %435 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %436 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %435, i32 0, i32 4
  store i32 1, i32* %436, align 4
  %437 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %438 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %437, i32 0, i32 3
  store i32 0, i32* %438, align 8
  %439 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %440 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %439, i32 0, i32 11
  store i32 0, i32* %440, align 8
  %441 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %442 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %441, i32 0, i32 10
  store i32 0, i32* %442, align 4
  %443 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %444 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %443, i32 0, i32 9
  store i32 0, i32* %444, align 8
  br label %481

445:                                              ; preds = %98
  %446 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %447 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %448 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %447, i32 0, i32 12
  %449 = call i32 @fifo_write_char(%struct.cyapa_softc* %446, i32* %448, i32 250)
  %450 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %451 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %450, i32 0, i32 6
  store i32 1, i32* %451, align 4
  br label %481

452:                                              ; preds = %98
  %453 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %454 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %455 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %454, i32 0, i32 12
  %456 = call i32 @fifo_reset(%struct.cyapa_softc* %453, i32* %455)
  %457 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %458 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %459 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %458, i32 0, i32 13
  %460 = call i32 @fifo_reset(%struct.cyapa_softc* %457, i32* %459)
  %461 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %462 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %463 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %462, i32 0, i32 12
  %464 = call i32 @fifo_write_char(%struct.cyapa_softc* %461, i32* %463, i32 250)
  %465 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %466 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %465, i32 0, i32 11
  store i32 0, i32* %466, align 8
  %467 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %468 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %467, i32 0, i32 10
  store i32 0, i32* %468, align 4
  %469 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %470 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %469, i32 0, i32 9
  store i32 0, i32* %470, align 8
  %471 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %472 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %471, i32 0, i32 7
  store i32 0, i32* %472, align 8
  %473 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %474 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %473, i32 0, i32 8
  %475 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i32 0, i32 2
  store i32 0, i32* %475, align 4
  br label %481

476:                                              ; preds = %98
  %477 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %478 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %479)
  br label %481

481:                                              ; preds = %476, %452, %445, %422, %415, %408, %407, %311, %286, %250, %245, %240, %233, %220, %202, %135, %134, %109, %102
  %482 = load i32, i32* %9, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %489

484:                                              ; preds = %481
  %485 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %486 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %485, i32 0, i32 0
  store i32 0, i32* %486, align 8
  %487 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %488 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %487, i32 0, i32 2
  store i64 0, i64* %488, align 8
  br label %489

489:                                              ; preds = %484, %481
  %490 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %491 = call i32 @cyapa_notify(%struct.cyapa_softc* %490)
  br label %71

492:                                              ; preds = %83
  %493 = load %struct.cyapa_softc*, %struct.cyapa_softc** %7, align 8
  %494 = call i32 @cyapa_unlock(%struct.cyapa_softc* %493)
  %495 = load i32, i32* %8, align 4
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %506

497:                                              ; preds = %492
  %498 = load i32, i32* %9, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %505, label %500

500:                                              ; preds = %497
  %501 = load %struct.uio*, %struct.uio** %5, align 8
  %502 = getelementptr inbounds %struct.uio, %struct.uio* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %500, %497
  br label %16

506:                                              ; preds = %500, %492
  %507 = load i32, i32* %8, align 4
  ret i32 %507
}

declare dso_local i32 @cyapa_lock(%struct.cyapa_softc*) #1

declare dso_local i64 @fifo_space(%struct.cyapa_softc*, i32*) #1

declare dso_local i8* @fifo_write(%struct.cyapa_softc*, i32*, i64) #1

declare dso_local i32 @cyapa_unlock(%struct.cyapa_softc*) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i64 @fifo_ready(%struct.cyapa_softc*, i32*) #1

declare dso_local i8* @fifo_read_char(%struct.cyapa_softc*, i32*) #1

declare dso_local i32 @fifo_write_char(%struct.cyapa_softc*, i32*, i32) #1

declare dso_local i32 @fifo_reset(%struct.cyapa_softc*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @cyapa_notify(%struct.cyapa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
