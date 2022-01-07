; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_FillPhysicalQueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_FillPhysicalQueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink*, %struct.TYPE_8__ }
%struct.datalink = type { i64, %struct.datalink*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.link, i64 }
%struct.link = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.mp }
%struct.mp = type { i64, %struct.TYPE_7__, %struct.link }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mbuf = type { i64 }

@DATALINK_OPEN = common dso_local global i64 0, align 8
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Don't send data as PROTO_IP, MRU < MRRU\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Sending data as PROTO_IP, not PROTO_MP\0A\00", align 1
@MB_MPOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_FillPhysicalQueues(%struct.bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca %struct.mp*, align 8
  %5 = alloca %struct.datalink*, align 8
  %6 = alloca %struct.datalink*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca %struct.mbuf*, align 8
  %18 = alloca %struct.link*, align 8
  %19 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  %20 = load %struct.bundle*, %struct.bundle** %3, align 8
  %21 = getelementptr inbounds %struct.bundle, %struct.bundle* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store %struct.mp* %22, %struct.mp** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store %struct.datalink* null, %struct.datalink** %6, align 8
  %23 = load %struct.bundle*, %struct.bundle** %3, align 8
  %24 = getelementptr inbounds %struct.bundle, %struct.bundle* %23, i32 0, i32 0
  %25 = load %struct.datalink*, %struct.datalink** %24, align 8
  store %struct.datalink* %25, %struct.datalink** %5, align 8
  br label %26

26:                                               ; preds = %57, %1
  %27 = load %struct.datalink*, %struct.datalink** %5, align 8
  %28 = icmp ne %struct.datalink* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load %struct.datalink*, %struct.datalink** %6, align 8
  %31 = icmp ne %struct.datalink* %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.mp*, %struct.mp** %4, align 8
  %35 = getelementptr inbounds %struct.mp, %struct.mp* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load %struct.datalink*, %struct.datalink** %5, align 8
  store %struct.datalink* %40, %struct.datalink** %6, align 8
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %39
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.datalink*, %struct.datalink** %5, align 8
  %49 = getelementptr inbounds %struct.datalink, %struct.datalink* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DATALINK_OPEN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.datalink*, %struct.datalink** %5, align 8
  %59 = getelementptr inbounds %struct.datalink, %struct.datalink* %58, i32 0, i32 1
  %60 = load %struct.datalink*, %struct.datalink** %59, align 8
  store %struct.datalink* %60, %struct.datalink** %5, align 8
  br label %26

61:                                               ; preds = %26
  %62 = load %struct.datalink*, %struct.datalink** %6, align 8
  %63 = icmp ne %struct.datalink* %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load %struct.bundle*, %struct.bundle** %3, align 8
  %66 = getelementptr inbounds %struct.bundle, %struct.bundle* %65, i32 0, i32 0
  %67 = load %struct.datalink*, %struct.datalink** %66, align 8
  store %struct.datalink* %67, %struct.datalink** %6, align 8
  %68 = load %struct.datalink*, %struct.datalink** %6, align 8
  %69 = icmp ne %struct.datalink* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %291

71:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %61
  store i64 0, i64* %7, align 8
  %73 = load %struct.datalink*, %struct.datalink** %6, align 8
  store %struct.datalink* %73, %struct.datalink** %5, align 8
  br label %74

74:                                               ; preds = %276, %72
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %284

77:                                               ; preds = %74
  %78 = load %struct.datalink*, %struct.datalink** %5, align 8
  %79 = icmp ne %struct.datalink* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load %struct.bundle*, %struct.bundle** %3, align 8
  %82 = getelementptr inbounds %struct.bundle, %struct.bundle* %81, i32 0, i32 0
  %83 = load %struct.datalink*, %struct.datalink** %82, align 8
  store %struct.datalink* %83, %struct.datalink** %5, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.datalink*, %struct.datalink** %5, align 8
  %86 = getelementptr inbounds %struct.datalink, %struct.datalink* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DATALINK_OPEN, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %276

91:                                               ; preds = %84
  %92 = load %struct.datalink*, %struct.datalink** %5, align 8
  %93 = getelementptr inbounds %struct.datalink, %struct.datalink* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %276

99:                                               ; preds = %91
  %100 = load %struct.datalink*, %struct.datalink** %5, align 8
  %101 = getelementptr inbounds %struct.datalink, %struct.datalink* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i64 @link_QueueLen(%struct.link* %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %7, align 8
  br label %276

111:                                              ; preds = %99
  %112 = load %struct.mp*, %struct.mp** %4, align 8
  %113 = call i32 @mp_QueueLen(%struct.mp* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %187, label %115

115:                                              ; preds = %111
  store i32 0, i32* %19, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 2
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = load %struct.datalink*, %struct.datalink** %5, align 8
  %123 = getelementptr inbounds %struct.datalink, %struct.datalink* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.link, %struct.link* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mp*, %struct.mp** %4, align 8
  %130 = getelementptr inbounds %struct.mp, %struct.mp* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  store i32 1, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %133, %121
  br label %135

135:                                              ; preds = %134, %115
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.datalink*, %struct.datalink** %5, align 8
  %140 = getelementptr inbounds %struct.datalink, %struct.datalink* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  br label %146

143:                                              ; preds = %135
  %144 = load %struct.mp*, %struct.mp** %4, align 8
  %145 = getelementptr inbounds %struct.mp, %struct.mp* %144, i32 0, i32 2
  br label %146

146:                                              ; preds = %143, %138
  %147 = phi %struct.link* [ %142, %138 ], [ %145, %143 ]
  store %struct.link* %147, %struct.link** %18, align 8
  %148 = load %struct.bundle*, %struct.bundle** %3, align 8
  %149 = getelementptr inbounds %struct.bundle, %struct.bundle* %148, i32 0, i32 1
  %150 = load %struct.mp*, %struct.mp** %4, align 8
  %151 = getelementptr inbounds %struct.mp, %struct.mp* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load %struct.link*, %struct.link** %18, align 8
  %154 = call i32 @ncp_PushPacket(%struct.TYPE_8__* %149, i32* %152, %struct.link* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %146
  br label %284

157:                                              ; preds = %146
  %158 = load i32, i32* %19, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* @LogDEBUG, align 4
  %162 = call i32 @log_Printf(i32 %161, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %170

163:                                              ; preds = %157
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @LogDEBUG, align 4
  %168 = call i32 @log_Printf(i32 %167, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %160
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = load %struct.datalink*, %struct.datalink** %5, align 8
  %175 = getelementptr inbounds %struct.datalink, %struct.datalink* %174, i32 0, i32 2
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = call i64 @link_QueueLen(%struct.link* %177)
  store i64 %178, i64* %8, align 8
  %179 = load i64, i64* %8, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %173
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %7, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %7, align 8
  br label %276

185:                                              ; preds = %173
  br label %186

186:                                              ; preds = %185, %170
  br label %187

187:                                              ; preds = %186, %111
  %188 = load %struct.mp*, %struct.mp** %4, align 8
  %189 = getelementptr inbounds %struct.mp, %struct.mp* %188, i32 0, i32 2
  %190 = call %struct.mbuf* @link_Dequeue(%struct.link* %189)
  store %struct.mbuf* %190, %struct.mbuf** %16, align 8
  %191 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %192 = icmp ne %struct.mbuf* %191, null
  br i1 %192, label %193, label %275

193:                                              ; preds = %187
  %194 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %195 = call i64 @m_length(%struct.mbuf* %194)
  store i64 %195, i64* %9, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %196

196:                                              ; preds = %273, %193
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  br i1 %199, label %200, label %274

200:                                              ; preds = %196
  %201 = load %struct.datalink*, %struct.datalink** %5, align 8
  %202 = getelementptr inbounds %struct.datalink, %struct.datalink* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @DATALINK_OPEN, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %254

206:                                              ; preds = %200
  %207 = load i64, i64* %9, align 8
  %208 = load %struct.datalink*, %struct.datalink** %5, align 8
  %209 = getelementptr inbounds %struct.datalink, %struct.datalink* %208, i32 0, i32 2
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.link, %struct.link* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ule i64 %207, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %206
  %217 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %217, %struct.mbuf** %17, align 8
  store i32 1, i32* %15, align 4
  %218 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %219 = load i32, i32* @MB_MPOUT, align 4
  %220 = call i32 @m_settype(%struct.mbuf* %218, i32 %219)
  br label %243

221:                                              ; preds = %206
  %222 = load %struct.datalink*, %struct.datalink** %5, align 8
  %223 = getelementptr inbounds %struct.datalink, %struct.datalink* %222, i32 0, i32 2
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.link, %struct.link* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* @MB_MPOUT, align 4
  %230 = call %struct.mbuf* @m_get(i64 %228, i32 %229)
  store %struct.mbuf* %230, %struct.mbuf** %17, align 8
  %231 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %232 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %9, align 8
  %235 = sub i64 %234, %233
  store i64 %235, i64* %9, align 8
  %236 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %237 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %238 = call i32 @MBUF_CTOP(%struct.mbuf* %237)
  %239 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %240 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %236, i32 %238, i64 %241)
  store %struct.mbuf* %242, %struct.mbuf** %16, align 8
  br label %243

243:                                              ; preds = %221, %216
  %244 = load %struct.mp*, %struct.mp** %4, align 8
  %245 = load %struct.bundle*, %struct.bundle** %3, align 8
  %246 = load %struct.datalink*, %struct.datalink** %5, align 8
  %247 = getelementptr inbounds %struct.datalink, %struct.datalink* %246, i32 0, i32 2
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @mp_Output(%struct.mp* %244, %struct.bundle* %245, %struct.link* %249, %struct.mbuf* %250, i32 %251, i32 %252)
  store i32 0, i32* %14, align 4
  br label %254

254:                                              ; preds = %243, %200
  %255 = load i32, i32* %15, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %273, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %11, align 4
  %260 = load %struct.datalink*, %struct.datalink** %5, align 8
  %261 = getelementptr inbounds %struct.datalink, %struct.datalink* %260, i32 0, i32 1
  %262 = load %struct.datalink*, %struct.datalink** %261, align 8
  store %struct.datalink* %262, %struct.datalink** %5, align 8
  %263 = load %struct.datalink*, %struct.datalink** %5, align 8
  %264 = icmp ne %struct.datalink* %263, null
  br i1 %264, label %269, label %265

265:                                              ; preds = %257
  %266 = load %struct.bundle*, %struct.bundle** %3, align 8
  %267 = getelementptr inbounds %struct.bundle, %struct.bundle* %266, i32 0, i32 0
  %268 = load %struct.datalink*, %struct.datalink** %267, align 8
  store %struct.datalink* %268, %struct.datalink** %5, align 8
  store i32 0, i32* %10, align 4
  br label %272

269:                                              ; preds = %257
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %10, align 4
  br label %272

272:                                              ; preds = %269, %265
  br label %273

273:                                              ; preds = %272, %254
  br label %196

274:                                              ; preds = %196
  br label %275

275:                                              ; preds = %274, %187
  br label %276

276:                                              ; preds = %275, %181, %107, %98, %90
  %277 = load %struct.datalink*, %struct.datalink** %5, align 8
  %278 = getelementptr inbounds %struct.datalink, %struct.datalink* %277, i32 0, i32 1
  %279 = load %struct.datalink*, %struct.datalink** %278, align 8
  store %struct.datalink* %279, %struct.datalink** %5, align 8
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %10, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %10, align 4
  br label %74

284:                                              ; preds = %156, %74
  %285 = load i32, i32* %10, align 4
  %286 = load %struct.mp*, %struct.mp** %4, align 8
  %287 = getelementptr inbounds %struct.mp, %struct.mp* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  %289 = load i64, i64* %7, align 8
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %2, align 4
  br label %291

291:                                              ; preds = %284, %70
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local i64 @link_QueueLen(%struct.link*) #1

declare dso_local i32 @mp_QueueLen(%struct.mp*) #1

declare dso_local i32 @ncp_PushPacket(%struct.TYPE_8__*, i32*, %struct.link*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local %struct.mbuf* @link_Dequeue(%struct.link*) #1

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local i32 @m_settype(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_get(i64, i32) #1

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, i32, i64) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @mp_Output(%struct.mp*, %struct.bundle*, %struct.link*, %struct.mbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
