; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.psm_softc* }
%struct.psm_softc = type { i32, i32, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_9__, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8* }

@MOUSE_MODEL_GENERIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MOUSE_PROTO_PS2 = common dso_local global i8* null, align 8
@MOUSE_PROTO_SYSMOUSE = common dso_local global i8* null, align 8
@PSM_NEED_SYNCBITS = common dso_local global i32 0, align 4
@MOUSE_RES_LOW = common dso_local global i8* null, align 8
@MOUSE_PS2_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_SYS_SYNCMASK = common dso_local global i32 0, align 4
@MOUSE_SYS_SYNC = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@MOUSE_RES_HIGH = common dso_local global i8* null, align 8
@MOUSE_RES_MEDIUMHIGH = common dso_local global i8* null, align 8
@MOUSE_RES_MEDIUMLOW = common dso_local global i8* null, align 8
@MOUSE_RES_DEFAULT = common dso_local global i32 0, align 4
@PSM_LEVEL_MIN = common dso_local global i32 0, align 4
@PSM_LEVEL_MAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @psmioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.psm_softc*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_13__, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %20 = load %struct.cdev*, %struct.cdev** %7, align 8
  %21 = getelementptr inbounds %struct.cdev, %struct.cdev* %20, i32 0, i32 0
  %22 = load %struct.psm_softc*, %struct.psm_softc** %21, align 8
  store %struct.psm_softc* %22, %struct.psm_softc** %12, align 8
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %834 [
    i32 133, label %24
    i32 145, label %57
    i32 134, label %78
    i32 132, label %97
    i32 143, label %142
    i32 131, label %222
    i32 138, label %222
    i32 144, label %472
    i32 139, label %479
    i32 142, label %500
    i32 140, label %534
    i32 141, label %534
    i32 136, label %575
    i32 137, label %691
    i32 135, label %754
    i32 146, label %788
    i32 148, label %820
    i32 150, label %820
    i32 147, label %821
    i32 149, label %828
  ]

24:                                               ; preds = %5
  %25 = call i32 (...) @spltty()
  store i32 %25, i32* %19, align 4
  %26 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %27 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_12__*
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %34 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %9, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_12__*
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %41 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_12__*
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %48 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 255
  %52 = load i64, i64* %9, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_12__*
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @splx(i32 %55)
  br label %836

57:                                               ; preds = %5
  %58 = call i32 (...) @spltty()
  store i32 %58, i32* %19, align 4
  %59 = load i64, i64* %9, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_15__*
  %61 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %62 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %61, i32 0, i32 2
  %63 = bitcast %struct.TYPE_15__* %60 to i8*
  %64 = bitcast %struct.TYPE_15__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 8 %64, i64 20, i1 false)
  %65 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %66 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 130
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load i32, i32* @MOUSE_MODEL_GENERIC, align 4
  %72 = load i64, i64* %9, align 8
  %73 = inttoptr i64 %72 to %struct.TYPE_15__*
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %57
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @splx(i32 %76)
  br label %836

78:                                               ; preds = %5
  %79 = call i32 (...) @spltty()
  store i32 %79, i32* %19, align 4
  %80 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %81 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %83, 4
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i64, i64* %9, align 8
  %87 = inttoptr i64 %86 to %struct.TYPE_10__*
  %88 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %89 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %88, i32 0, i32 7
  %90 = bitcast %struct.TYPE_10__* %87 to i8*
  %91 = bitcast %struct.TYPE_10__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 8 %91, i64 4, i1 false)
  br label %94

92:                                               ; preds = %78
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %92, %85
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @splx(i32 %95)
  br label %836

97:                                               ; preds = %5
  %98 = call i32 (...) @spltty()
  store i32 %98, i32* %19, align 4
  %99 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %100 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %118 [
    i32 130, label %103
    i32 128, label %108
    i32 129, label %113
  ]

103:                                              ; preds = %97
  %104 = load i8*, i8** @MOUSE_PROTO_PS2, align 8
  %105 = load i64, i64* %9, align 8
  %106 = inttoptr i64 %105 to %struct.TYPE_11__*
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i8* %104, i8** %107, align 8
  br label %118

108:                                              ; preds = %97
  %109 = load i8*, i8** @MOUSE_PROTO_SYSMOUSE, align 8
  %110 = load i64, i64* %9, align 8
  %111 = inttoptr i64 %110 to %struct.TYPE_11__*
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  br label %118

113:                                              ; preds = %97
  %114 = load i8*, i8** @MOUSE_PROTO_PS2, align 8
  %115 = load i64, i64* %9, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_11__*
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  store i8* %114, i8** %117, align 8
  br label %118

118:                                              ; preds = %97, %113, %108, %103
  %119 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %120 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %9, align 8
  %124 = inttoptr i64 %123 to %struct.TYPE_11__*
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %127 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = inttoptr i64 %130 to %struct.TYPE_11__*
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %134 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %9, align 8
  %138 = inttoptr i64 %137 to %struct.TYPE_11__*
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  %140 = load i32, i32* %19, align 4
  %141 = call i32 @splx(i32 %140)
  br label %836

142:                                              ; preds = %5
  %143 = call i32 (...) @spltty()
  store i32 %143, i32* %19, align 4
  %144 = load i64, i64* %9, align 8
  %145 = inttoptr i64 %144 to %struct.TYPE_14__*
  %146 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %147 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %146, i32 0, i32 4
  %148 = bitcast %struct.TYPE_14__* %145 to i8*
  %149 = bitcast %struct.TYPE_14__* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 40, i1 false)
  %150 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %151 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PSM_NEED_SYNCBITS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %142
  %157 = load i64, i64* %9, align 8
  %158 = inttoptr i64 %157 to %struct.TYPE_14__*
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 5
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 0, i32* %161, align 4
  %162 = load i64, i64* %9, align 8
  %163 = inttoptr i64 %162 to %struct.TYPE_14__*
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %156, %142
  %168 = load i8*, i8** @MOUSE_RES_LOW, align 8
  %169 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %170 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = sub i64 0, %173
  %175 = getelementptr i8, i8* %168, i64 %174
  %176 = ptrtoint i8* %175 to i32
  %177 = load i64, i64* %9, align 8
  %178 = inttoptr i64 %177 to %struct.TYPE_14__*
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  store i32 %176, i32* %179, align 8
  %180 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %181 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %219 [
    i32 130, label %184
    i32 128, label %193
    i32 129, label %214
  ]

184:                                              ; preds = %167
  %185 = load i8*, i8** @MOUSE_PROTO_PS2, align 8
  %186 = load i64, i64* %9, align 8
  %187 = inttoptr i64 %186 to %struct.TYPE_14__*
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 4
  store i8* %185, i8** %188, align 8
  %189 = load i32, i32* @MOUSE_PS2_PACKETSIZE, align 4
  %190 = load i64, i64* %9, align 8
  %191 = inttoptr i64 %190 to %struct.TYPE_14__*
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 6
  store i32 %189, i32* %192, align 8
  br label %219

193:                                              ; preds = %167
  %194 = load i8*, i8** @MOUSE_PROTO_SYSMOUSE, align 8
  %195 = load i64, i64* %9, align 8
  %196 = inttoptr i64 %195 to %struct.TYPE_14__*
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 4
  store i8* %194, i8** %197, align 8
  %198 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %199 = load i64, i64* %9, align 8
  %200 = inttoptr i64 %199 to %struct.TYPE_14__*
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 6
  store i32 %198, i32* %201, align 8
  %202 = load i32, i32* @MOUSE_SYS_SYNCMASK, align 4
  %203 = load i64, i64* %9, align 8
  %204 = inttoptr i64 %203 to %struct.TYPE_14__*
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %202, i32* %207, align 4
  %208 = load i32, i32* @MOUSE_SYS_SYNC, align 4
  %209 = load i64, i64* %9, align 8
  %210 = inttoptr i64 %209 to %struct.TYPE_14__*
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  store i32 %208, i32* %213, align 4
  br label %219

214:                                              ; preds = %167
  %215 = load i8*, i8** @MOUSE_PROTO_PS2, align 8
  %216 = load i64, i64* %9, align 8
  %217 = inttoptr i64 %216 to %struct.TYPE_14__*
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 4
  store i8* %215, i8** %218, align 8
  br label %219

219:                                              ; preds = %167, %214, %193, %184
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @splx(i32 %220)
  br label %836

222:                                              ; preds = %5, %5
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 131
  br i1 %224, label %225, label %253

225:                                              ; preds = %222
  %226 = load i64, i64* %9, align 8
  %227 = inttoptr i64 %226 to %struct.TYPE_11__*
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %229, i32* %230, align 4
  %231 = load i64, i64* %9, align 8
  %232 = inttoptr i64 %231 to %struct.TYPE_11__*
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %225
  %237 = load i64, i64* %9, align 8
  %238 = inttoptr i64 %237 to %struct.TYPE_11__*
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 0, %240
  %242 = sub nsw i32 %241, 1
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %242, i32* %243, align 8
  br label %246

244:                                              ; preds = %225
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 0, i32* %245, align 8
  br label %246

246:                                              ; preds = %244, %236
  %247 = load i64, i64* %9, align 8
  %248 = inttoptr i64 %247 to %struct.TYPE_11__*
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  store i32 %250, i32* %251, align 4
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32 -1, i32* %252, align 8
  br label %258

253:                                              ; preds = %222
  %254 = load i64, i64* %9, align 8
  %255 = inttoptr i64 %254 to %struct.TYPE_14__*
  %256 = bitcast %struct.TYPE_14__* %13 to i8*
  %257 = bitcast %struct.TYPE_14__* %255 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %256, i8* align 8 %257, i64 40, i1 false)
  br label %258

258:                                              ; preds = %253, %246
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @UCHAR_MAX, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %258
  %264 = load i32, i32* @EINVAL, align 4
  store i32 %264, i32* %6, align 4
  br label %838

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %265
  %270 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %271 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %273, i32* %274, align 4
  br label %288

275:                                              ; preds = %265
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %287

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i32, i32* @EINVAL, align 4
  store i32 %285, i32* %6, align 4
  br label %838

286:                                              ; preds = %280
  br label %287

287:                                              ; preds = %286, %279
  br label %288

288:                                              ; preds = %287, %269
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @UCHAR_MAX, align 4
  %292 = icmp sge i32 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  %294 = load i32, i32* @EINVAL, align 4
  store i32 %294, i32* %6, align 4
  br label %838

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp sge i32 %297, 200
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load i8*, i8** @MOUSE_RES_HIGH, align 8
  %301 = ptrtoint i8* %300 to i32
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %301, i32* %302, align 8
  br label %330

303:                                              ; preds = %295
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = icmp sge i32 %305, 100
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = load i8*, i8** @MOUSE_RES_MEDIUMHIGH, align 8
  %309 = ptrtoint i8* %308 to i32
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %309, i32* %310, align 8
  br label %329

311:                                              ; preds = %303
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = icmp sge i32 %313, 50
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load i8*, i8** @MOUSE_RES_MEDIUMLOW, align 8
  %317 = ptrtoint i8* %316 to i32
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %317, i32* %318, align 8
  br label %328

319:                                              ; preds = %311
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = load i8*, i8** @MOUSE_RES_LOW, align 8
  %325 = ptrtoint i8* %324 to i32
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %325, i32* %326, align 8
  br label %327

327:                                              ; preds = %323, %319
  br label %328

328:                                              ; preds = %327, %315
  br label %329

329:                                              ; preds = %328, %307
  br label %330

330:                                              ; preds = %329, %299
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @MOUSE_RES_DEFAULT, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %341

335:                                              ; preds = %330
  %336 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %337 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %336, i32 0, i32 5
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %339, i32* %340, align 8
  br label %361

341:                                              ; preds = %330
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %345, label %346

345:                                              ; preds = %341
  br label %360

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %359

350:                                              ; preds = %346
  %351 = load i8*, i8** @MOUSE_RES_LOW, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = sext i32 %353 to i64
  %355 = sub i64 0, %354
  %356 = getelementptr i8, i8* %351, i64 %355
  %357 = ptrtoint i8* %356 to i32
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %357, i32* %358, align 8
  br label %359

359:                                              ; preds = %350, %346
  br label %360

360:                                              ; preds = %359, %345
  br label %361

361:                                              ; preds = %360, %335
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = icmp eq i32 %363, -1
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %367 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %366, i32 0, i32 4
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32 %369, i32* %370, align 8
  br label %384

371:                                              ; preds = %361
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @PSM_LEVEL_MIN, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %381, label %376

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @PSM_LEVEL_MAX, align 4
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %376, %371
  %382 = load i32, i32* @EINVAL, align 4
  store i32 %382, i32* %6, align 4
  br label %838

383:                                              ; preds = %376
  br label %384

384:                                              ; preds = %383, %365
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, -1
  br i1 %387, label %388, label %394

388:                                              ; preds = %384
  %389 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %390 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %389, i32 0, i32 4
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  store i32 %392, i32* %393, align 4
  br label %401

394:                                              ; preds = %384
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = load i32, i32* @EINVAL, align 4
  store i32 %399, i32* %6, align 4
  br label %838

400:                                              ; preds = %394
  br label %401

401:                                              ; preds = %400, %388
  %402 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %403 = call i32 @block_mouse_data(%struct.psm_softc* %402, i32* %17)
  store i32 %403, i32* %18, align 4
  %404 = load i32, i32* %18, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %401
  %407 = load i32, i32* %18, align 4
  store i32 %407, i32* %6, align 4
  br label %838

408:                                              ; preds = %401
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %421

412:                                              ; preds = %408
  %413 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %414 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = call i8* @set_mouse_sampling_rate(i32 %415, i32 %417)
  %419 = ptrtoint i8* %418 to i32
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %419, i32* %420, align 4
  br label %421

421:                                              ; preds = %412, %408
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = icmp sge i32 %423, 0
  br i1 %424, label %425, label %436

425:                                              ; preds = %421
  %426 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %427 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = inttoptr i64 %431 to i8*
  %433 = call i8* @set_mouse_resolution(i32 %428, i8* %432)
  %434 = ptrtoint i8* %433 to i32
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %434, i32* %435, align 8
  br label %436

436:                                              ; preds = %425, %421
  %437 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %438 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @set_mouse_scaling(i32 %439, i32 1)
  %441 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %442 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 4
  %444 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %445 = call i32 @get_mouse_status(i32 %443, i32* %444, i32 0, i32 3)
  %446 = call i32 (...) @spltty()
  store i32 %446, i32* %19, align 4
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %450 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %449, i32 0, i32 4
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 1
  store i32 %448, i32* %451, align 4
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %455 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %454, i32 0, i32 4
  %456 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %455, i32 0, i32 2
  store i32 %453, i32* %456, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %460 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %459, i32 0, i32 4
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 3
  store i32 %458, i32* %461, align 4
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %465 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %464, i32 0, i32 4
  %466 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %465, i32 0, i32 0
  store i32 %463, i32* %466, align 8
  %467 = load i32, i32* %19, align 4
  %468 = call i32 @splx(i32 %467)
  %469 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %470 = load i32, i32* %17, align 4
  %471 = call i32 @unblock_mouse_data(%struct.psm_softc* %469, i32 %470)
  br label %836

472:                                              ; preds = %5
  %473 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %474 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %473, i32 0, i32 4
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load i64, i64* %9, align 8
  %478 = inttoptr i64 %477 to i32*
  store i32 %476, i32* %478, align 4
  br label %836

479:                                              ; preds = %5
  %480 = load i64, i64* %9, align 8
  %481 = inttoptr i64 %480 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @PSM_LEVEL_MIN, align 4
  %484 = icmp slt i32 %482, %483
  br i1 %484, label %491, label %485

485:                                              ; preds = %479
  %486 = load i64, i64* %9, align 8
  %487 = inttoptr i64 %486 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @PSM_LEVEL_MAX, align 4
  %490 = icmp sgt i32 %488, %489
  br i1 %490, label %491, label %493

491:                                              ; preds = %485, %479
  %492 = load i32, i32* @EINVAL, align 4
  store i32 %492, i32* %6, align 4
  br label %838

493:                                              ; preds = %485
  %494 = load i64, i64* %9, align 8
  %495 = inttoptr i64 %494 to i32*
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %498 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %497, i32 0, i32 4
  %499 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %498, i32 0, i32 0
  store i32 %496, i32* %499, align 8
  br label %836

500:                                              ; preds = %5
  %501 = call i32 (...) @spltty()
  store i32 %501, i32* %19, align 4
  %502 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %503 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %502, i32 0, i32 6
  %504 = bitcast %struct.TYPE_13__* %14 to i8*
  %505 = bitcast %struct.TYPE_13__* %503 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %504, i8* align 8 %505, i64 24, i1 false)
  %506 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %507 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %506, i32 0, i32 6
  %508 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %507, i32 0, i32 5
  store i32 0, i32* %508, align 4
  %509 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %510 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %509, i32 0, i32 6
  %511 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %514 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %513, i32 0, i32 6
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 4
  store i32 %512, i32* %515, align 8
  %516 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %517 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %516, i32 0, i32 6
  %518 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %517, i32 0, i32 3
  store i32 0, i32* %518, align 4
  %519 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %520 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %519, i32 0, i32 6
  %521 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %520, i32 0, i32 2
  store i32 0, i32* %521, align 8
  %522 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %523 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %522, i32 0, i32 6
  %524 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %523, i32 0, i32 1
  store i32 0, i32* %524, align 4
  %525 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %526 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %525, i32 0, i32 6
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 0
  store i32 0, i32* %527, align 8
  %528 = load i32, i32* %19, align 4
  %529 = call i32 @splx(i32 %528)
  %530 = load i64, i64* %9, align 8
  %531 = inttoptr i64 %530 to %struct.TYPE_13__*
  %532 = bitcast %struct.TYPE_13__* %531 to i8*
  %533 = bitcast %struct.TYPE_13__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %532, i8* align 4 %533, i64 24, i1 false)
  br label %836

534:                                              ; preds = %5, %5
  %535 = load i64, i64* %9, align 8
  %536 = inttoptr i64 %535 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %536, %struct.TYPE_16__** %15, align 8
  %537 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %538 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = sext i32 %539 to i64
  %541 = icmp ugt i64 %540, 2
  br i1 %541, label %542, label %544

542:                                              ; preds = %534
  %543 = load i32, i32* @EINVAL, align 4
  store i32 %543, i32* %6, align 4
  br label %838

544:                                              ; preds = %534
  %545 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %546 = call i32 @block_mouse_data(%struct.psm_softc* %545, i32* %17)
  store i32 %546, i32* %18, align 4
  %547 = load i32, i32* %18, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %544
  %550 = load i32, i32* %18, align 4
  store i32 %550, i32* %6, align 4
  br label %838

551:                                              ; preds = %544
  %552 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %553 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %556 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %555, i32 0, i32 1
  %557 = load i32*, i32** %556, align 8
  %558 = load i32, i32* %8, align 4
  %559 = icmp eq i32 %558, 141
  %560 = zext i1 %559 to i64
  %561 = select i1 %559, i32 1, i32 0
  %562 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %563 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = call i32 @get_mouse_status(i32 %554, i32* %557, i32 %561, i32 %564)
  %566 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %567 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %566, i32 0, i32 0
  store i32 %565, i32* %567, align 8
  %568 = icmp sle i32 %565, 0
  br i1 %568, label %569, label %571

569:                                              ; preds = %551
  %570 = load i32, i32* @EIO, align 4
  store i32 %570, i32* %18, align 4
  br label %571

571:                                              ; preds = %569, %551
  %572 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %573 = load i32, i32* %17, align 4
  %574 = call i32 @unblock_mouse_data(%struct.psm_softc* %572, i32 %573)
  br label %836

575:                                              ; preds = %5
  %576 = load i64, i64* %9, align 8
  %577 = inttoptr i64 %576 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %578, i32* %579, align 8
  %580 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %581 = load i32, i32* %580, align 8
  %582 = load i32, i32* @UCHAR_MAX, align 4
  %583 = icmp sge i32 %581, %582
  br i1 %583, label %584, label %586

584:                                              ; preds = %575
  %585 = load i32, i32* @EINVAL, align 4
  store i32 %585, i32* %6, align 4
  br label %838

586:                                              ; preds = %575
  %587 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %588 = load i32, i32* %587, align 8
  %589 = icmp sge i32 %588, 200
  br i1 %589, label %590, label %594

590:                                              ; preds = %586
  %591 = load i8*, i8** @MOUSE_RES_HIGH, align 8
  %592 = ptrtoint i8* %591 to i32
  %593 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %592, i32* %593, align 8
  br label %621

594:                                              ; preds = %586
  %595 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %596 = load i32, i32* %595, align 8
  %597 = icmp sge i32 %596, 100
  br i1 %597, label %598, label %602

598:                                              ; preds = %594
  %599 = load i8*, i8** @MOUSE_RES_MEDIUMHIGH, align 8
  %600 = ptrtoint i8* %599 to i32
  %601 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %600, i32* %601, align 8
  br label %620

602:                                              ; preds = %594
  %603 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %604 = load i32, i32* %603, align 8
  %605 = icmp sge i32 %604, 50
  br i1 %605, label %606, label %610

606:                                              ; preds = %602
  %607 = load i8*, i8** @MOUSE_RES_MEDIUMLOW, align 8
  %608 = ptrtoint i8* %607 to i32
  %609 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %608, i32* %609, align 8
  br label %619

610:                                              ; preds = %602
  %611 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %612 = load i32, i32* %611, align 8
  %613 = icmp sgt i32 %612, 0
  br i1 %613, label %614, label %618

614:                                              ; preds = %610
  %615 = load i8*, i8** @MOUSE_RES_LOW, align 8
  %616 = ptrtoint i8* %615 to i32
  %617 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %616, i32* %617, align 8
  br label %618

618:                                              ; preds = %614, %610
  br label %619

619:                                              ; preds = %618, %606
  br label %620

620:                                              ; preds = %619, %598
  br label %621

621:                                              ; preds = %620, %590
  br label %622

622:                                              ; preds = %621
  %623 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %624 = load i32, i32* %623, align 8
  %625 = load i32, i32* @MOUSE_RES_DEFAULT, align 4
  %626 = icmp eq i32 %624, %625
  br i1 %626, label %627, label %633

627:                                              ; preds = %622
  %628 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %629 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %628, i32 0, i32 5
  %630 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %629, i32 0, i32 1
  %631 = load i32, i32* %630, align 4
  %632 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %631, i32* %632, align 8
  br label %658

633:                                              ; preds = %622
  %634 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %635 = load i32, i32* %634, align 8
  %636 = icmp eq i32 %635, -1
  br i1 %636, label %637, label %643

637:                                              ; preds = %633
  %638 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %639 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %638, i32 0, i32 4
  %640 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %639, i32 0, i32 2
  %641 = load i32, i32* %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %641, i32* %642, align 8
  br label %657

643:                                              ; preds = %633
  %644 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %645 = load i32, i32* %644, align 8
  %646 = icmp slt i32 %645, 0
  br i1 %646, label %647, label %656

647:                                              ; preds = %643
  %648 = load i8*, i8** @MOUSE_RES_LOW, align 8
  %649 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %650 = load i32, i32* %649, align 8
  %651 = sext i32 %650 to i64
  %652 = sub i64 0, %651
  %653 = getelementptr i8, i8* %648, i64 %652
  %654 = ptrtoint i8* %653 to i32
  %655 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %654, i32* %655, align 8
  br label %656

656:                                              ; preds = %647, %643
  br label %657

657:                                              ; preds = %656, %637
  br label %658

658:                                              ; preds = %657, %627
  %659 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %660 = call i32 @block_mouse_data(%struct.psm_softc* %659, i32* %17)
  store i32 %660, i32* %18, align 4
  %661 = load i32, i32* %18, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %665

663:                                              ; preds = %658
  %664 = load i32, i32* %18, align 4
  store i32 %664, i32* %6, align 4
  br label %838

665:                                              ; preds = %658
  %666 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %667 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %666, i32 0, i32 3
  %668 = load i32, i32* %667, align 4
  %669 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %670 = load i32, i32* %669, align 8
  %671 = sext i32 %670 to i64
  %672 = inttoptr i64 %671 to i8*
  %673 = call i8* @set_mouse_resolution(i32 %668, i8* %672)
  %674 = ptrtoint i8* %673 to i32
  %675 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %676 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %675, i32 0, i32 4
  %677 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %676, i32 0, i32 2
  store i32 %674, i32* %677, align 8
  %678 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %679 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %678, i32 0, i32 4
  %680 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %679, i32 0, i32 2
  %681 = load i32, i32* %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %683 = load i32, i32* %682, align 8
  %684 = icmp ne i32 %681, %683
  br i1 %684, label %685, label %687

685:                                              ; preds = %665
  %686 = load i32, i32* @EIO, align 4
  store i32 %686, i32* %18, align 4
  br label %687

687:                                              ; preds = %685, %665
  %688 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %689 = load i32, i32* %17, align 4
  %690 = call i32 @unblock_mouse_data(%struct.psm_softc* %688, i32 %689)
  br label %836

691:                                              ; preds = %5
  %692 = load i64, i64* %9, align 8
  %693 = inttoptr i64 %692 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %694, i32* %695, align 4
  %696 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %697 = load i32, i32* %696, align 4
  %698 = load i32, i32* @UCHAR_MAX, align 4
  %699 = icmp sgt i32 %697, %698
  br i1 %699, label %700, label %702

700:                                              ; preds = %691
  %701 = load i32, i32* @EINVAL, align 4
  store i32 %701, i32* %6, align 4
  br label %838

702:                                              ; preds = %691
  %703 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %704 = load i32, i32* %703, align 4
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %712

706:                                              ; preds = %702
  %707 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %708 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %707, i32 0, i32 5
  %709 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %710, i32* %711, align 4
  br label %723

712:                                              ; preds = %702
  %713 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %714 = load i32, i32* %713, align 4
  %715 = icmp slt i32 %714, 0
  br i1 %715, label %716, label %722

716:                                              ; preds = %712
  %717 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %718 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %717, i32 0, i32 4
  %719 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %718, i32 0, i32 1
  %720 = load i32, i32* %719, align 4
  %721 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32 %720, i32* %721, align 4
  br label %722

722:                                              ; preds = %716, %712
  br label %723

723:                                              ; preds = %722, %706
  %724 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %725 = call i32 @block_mouse_data(%struct.psm_softc* %724, i32* %17)
  store i32 %725, i32* %18, align 4
  %726 = load i32, i32* %18, align 4
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %730

728:                                              ; preds = %723
  %729 = load i32, i32* %18, align 4
  store i32 %729, i32* %6, align 4
  br label %838

730:                                              ; preds = %723
  %731 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %732 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %731, i32 0, i32 3
  %733 = load i32, i32* %732, align 4
  %734 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %735 = load i32, i32* %734, align 4
  %736 = call i8* @set_mouse_sampling_rate(i32 %733, i32 %735)
  %737 = ptrtoint i8* %736 to i32
  %738 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %739 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %738, i32 0, i32 4
  %740 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %739, i32 0, i32 1
  store i32 %737, i32* %740, align 4
  %741 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %742 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %741, i32 0, i32 4
  %743 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %742, i32 0, i32 1
  %744 = load i32, i32* %743, align 4
  %745 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %746 = load i32, i32* %745, align 4
  %747 = icmp ne i32 %744, %746
  br i1 %747, label %748, label %750

748:                                              ; preds = %730
  %749 = load i32, i32* @EIO, align 4
  store i32 %749, i32* %18, align 4
  br label %750

750:                                              ; preds = %748, %730
  %751 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %752 = load i32, i32* %17, align 4
  %753 = call i32 @unblock_mouse_data(%struct.psm_softc* %751, i32 %752)
  br label %836

754:                                              ; preds = %5
  %755 = load i64, i64* %9, align 8
  %756 = inttoptr i64 %755 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = icmp sle i32 %757, 0
  br i1 %758, label %764, label %759

759:                                              ; preds = %754
  %760 = load i64, i64* %9, align 8
  %761 = inttoptr i64 %760 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = icmp sgt i32 %762, 2
  br i1 %763, label %764, label %766

764:                                              ; preds = %759, %754
  %765 = load i32, i32* @EINVAL, align 4
  store i32 %765, i32* %6, align 4
  br label %838

766:                                              ; preds = %759
  %767 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %768 = call i32 @block_mouse_data(%struct.psm_softc* %767, i32* %17)
  store i32 %768, i32* %18, align 4
  %769 = load i32, i32* %18, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %773

771:                                              ; preds = %766
  %772 = load i32, i32* %18, align 4
  store i32 %772, i32* %6, align 4
  br label %838

773:                                              ; preds = %766
  %774 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %775 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %774, i32 0, i32 3
  %776 = load i32, i32* %775, align 4
  %777 = load i64, i64* %9, align 8
  %778 = inttoptr i64 %777 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = call i32 @set_mouse_scaling(i32 %776, i32 %779)
  %781 = icmp ne i32 %780, 0
  br i1 %781, label %784, label %782

782:                                              ; preds = %773
  %783 = load i32, i32* @EIO, align 4
  store i32 %783, i32* %18, align 4
  br label %784

784:                                              ; preds = %782, %773
  %785 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %786 = load i32, i32* %17, align 4
  %787 = call i32 @unblock_mouse_data(%struct.psm_softc* %785, i32 %786)
  br label %836

788:                                              ; preds = %5
  %789 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %790 = call i32 @block_mouse_data(%struct.psm_softc* %789, i32* %17)
  store i32 %790, i32* %18, align 4
  %791 = load i32, i32* %18, align 4
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %795

793:                                              ; preds = %788
  %794 = load i32, i32* %18, align 4
  store i32 %794, i32* %6, align 4
  br label %838

795:                                              ; preds = %788
  %796 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %797 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %796, i32 0, i32 2
  %798 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %797, i32 0, i32 0
  %799 = load i32, i32* %798, align 8
  %800 = and i32 %799, -256
  store i32 %800, i32* %798, align 8
  %801 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %802 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %801, i32 0, i32 3
  %803 = load i32, i32* %802, align 4
  %804 = call i32 @get_aux_id(i32 %803)
  %805 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %806 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %805, i32 0, i32 2
  %807 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 8
  %809 = or i32 %808, %804
  store i32 %809, i32* %807, align 8
  %810 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %811 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %810, i32 0, i32 2
  %812 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 8
  %814 = and i32 %813, 255
  %815 = load i64, i64* %9, align 8
  %816 = inttoptr i64 %815 to i32*
  store i32 %814, i32* %816, align 4
  %817 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %818 = load i32, i32* %17, align 4
  %819 = call i32 @unblock_mouse_data(%struct.psm_softc* %817, i32 %818)
  br label %836

820:                                              ; preds = %5, %5
  br label %836

821:                                              ; preds = %5
  %822 = load i64, i64* %9, align 8
  %823 = inttoptr i64 %822 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %826 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %825, i32 0, i32 1
  %827 = call i32 @fsetown(i32 %824, i32* %826)
  store i32 %827, i32* %18, align 4
  br label %836

828:                                              ; preds = %5
  %829 = load %struct.psm_softc*, %struct.psm_softc** %12, align 8
  %830 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %829, i32 0, i32 1
  %831 = call i32 @fgetown(i32* %830)
  %832 = load i64, i64* %9, align 8
  %833 = inttoptr i64 %832 to i32*
  store i32 %831, i32* %833, align 4
  br label %836

834:                                              ; preds = %5
  %835 = load i32, i32* @ENOTTY, align 4
  store i32 %835, i32* %6, align 4
  br label %838

836:                                              ; preds = %828, %821, %820, %795, %784, %750, %687, %571, %500, %493, %472, %436, %219, %118, %94, %75, %24
  %837 = load i32, i32* %18, align 4
  store i32 %837, i32* %6, align 4
  br label %838

838:                                              ; preds = %836, %834, %793, %771, %764, %728, %700, %663, %584, %549, %542, %491, %406, %398, %381, %293, %284, %263
  %839 = load i32, i32* %6, align 4
  ret i32 %839
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @splx(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @block_mouse_data(%struct.psm_softc*, i32*) #1

declare dso_local i8* @set_mouse_sampling_rate(i32, i32) #1

declare dso_local i8* @set_mouse_resolution(i32, i8*) #1

declare dso_local i32 @set_mouse_scaling(i32, i32) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

declare dso_local i32 @unblock_mouse_data(%struct.psm_softc*, i32) #1

declare dso_local i32 @get_aux_id(i32) #1

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @fgetown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
