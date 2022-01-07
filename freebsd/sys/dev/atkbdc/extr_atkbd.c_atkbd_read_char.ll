; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_read_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32, i32*, i32, i32 }

@COMPOSE = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i64 0, align 8
@ERRKEY = common dso_local global i64 0, align 8
@NOKEY = common dso_local global i64 0, align 8
@K_RAW = common dso_local global i64 0, align 8
@KB_84 = common dso_local global i64 0, align 8
@SHIFTS = common dso_local global i32 0, align 4
@CTLS = common dso_local global i32 0, align 4
@KB_101 = common dso_local global i64 0, align 8
@ALTS = common dso_local global i32 0, align 4
@K_CODE = common dso_local global i64 0, align 8
@EVDEV_RCPT_HW_KBD = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@evdev_rcpt_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32)* @atkbd_read_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atkbd_read_char(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  br label %14

14:                                               ; preds = %365, %333, %332, %319, %299, %279, %170, %164, %154, %123, %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @COMPOSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @UCHAR_MAX, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* @ERRKEY, align 8
  store i64 %36, i64* %3, align 8
  br label %368

37:                                               ; preds = %26
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %3, align 8
  br label %368

39:                                               ; preds = %21, %14
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %48, %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @read_kbd_data(i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %43, label %51

51:                                               ; preds = %48
  br label %62

52:                                               ; preds = %39
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @read_kbd_data_no_wait(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i64, i64* @NOKEY, align 8
  store i64 %60, i64* %3, align 8
  br label %368

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %51
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @K_RAW, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %3, align 8
  br label %368

75:                                               ; preds = %62
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 127
  store i32 %77, i32* %9, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %172 [
    i32 0, label %81
    i32 224, label %128
    i32 225, label %156
    i32 29, label %165
  ]

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  switch i32 %82, label %127 [
    i32 184, label %83
    i32 56, label %107
    i32 224, label %123
    i32 225, label %123
  ]

83:                                               ; preds = %81
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @COMPOSE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %83
  %91 = load i32, i32* @COMPOSE, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @UCHAR_MAX, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %90
  br label %106

106:                                              ; preds = %105, %83
  br label %127

107:                                              ; preds = %81
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @COMPOSE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* @COMPOSE, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %114, %107
  br label %127

123:                                              ; preds = %81, %81
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  br label %14

127:                                              ; preds = %81, %122, %106
  br label %172

128:                                              ; preds = %75
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i32 0, i32* %130, align 8
  %131 = load i32, i32* %9, align 4
  switch i32 %131, label %154 [
    i32 28, label %132
    i32 29, label %133
    i32 53, label %134
    i32 55, label %135
    i32 56, label %136
    i32 70, label %137
    i32 71, label %138
    i32 72, label %139
    i32 73, label %140
    i32 75, label %141
    i32 77, label %142
    i32 79, label %143
    i32 80, label %144
    i32 81, label %145
    i32 82, label %146
    i32 83, label %147
    i32 91, label %148
    i32 92, label %149
    i32 93, label %150
    i32 94, label %151
    i32 95, label %152
    i32 99, label %153
  ]

132:                                              ; preds = %128
  store i32 89, i32* %9, align 4
  br label %155

133:                                              ; preds = %128
  store i32 90, i32* %9, align 4
  br label %155

134:                                              ; preds = %128
  store i32 91, i32* %9, align 4
  br label %155

135:                                              ; preds = %128
  store i32 92, i32* %9, align 4
  br label %155

136:                                              ; preds = %128
  store i32 93, i32* %9, align 4
  br label %155

137:                                              ; preds = %128
  store i32 104, i32* %9, align 4
  br label %155

138:                                              ; preds = %128
  store i32 94, i32* %9, align 4
  br label %155

139:                                              ; preds = %128
  store i32 95, i32* %9, align 4
  br label %155

140:                                              ; preds = %128
  store i32 96, i32* %9, align 4
  br label %155

141:                                              ; preds = %128
  store i32 97, i32* %9, align 4
  br label %155

142:                                              ; preds = %128
  store i32 98, i32* %9, align 4
  br label %155

143:                                              ; preds = %128
  store i32 99, i32* %9, align 4
  br label %155

144:                                              ; preds = %128
  store i32 100, i32* %9, align 4
  br label %155

145:                                              ; preds = %128
  store i32 101, i32* %9, align 4
  br label %155

146:                                              ; preds = %128
  store i32 102, i32* %9, align 4
  br label %155

147:                                              ; preds = %128
  store i32 103, i32* %9, align 4
  br label %155

148:                                              ; preds = %128
  store i32 105, i32* %9, align 4
  br label %155

149:                                              ; preds = %128
  store i32 106, i32* %9, align 4
  br label %155

150:                                              ; preds = %128
  store i32 107, i32* %9, align 4
  br label %155

151:                                              ; preds = %128
  store i32 109, i32* %9, align 4
  br label %155

152:                                              ; preds = %128
  store i32 110, i32* %9, align 4
  br label %155

153:                                              ; preds = %128
  store i32 111, i32* %9, align 4
  br label %155

154:                                              ; preds = %128
  br label %14

155:                                              ; preds = %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132
  br label %172

156:                                              ; preds = %75
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  store i32 0, i32* %158, align 8
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 29
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  store i32 29, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %156
  br label %14

165:                                              ; preds = %75
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  store i32 0, i32* %167, align 8
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 69
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %14

171:                                              ; preds = %165
  store i32 104, i32* %9, align 4
  br label %172

172:                                              ; preds = %75, %171, %155, %127
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @KB_84, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %172
  %179 = load i32, i32* %9, align 4
  switch i32 %179, label %207 [
    i32 55, label %180
    i32 69, label %189
    i32 70, label %198
  ]

180:                                              ; preds = %178
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @SHIFTS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  store i32 92, i32* %9, align 4
  br label %188

188:                                              ; preds = %187, %180
  br label %207

189:                                              ; preds = %178
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @CTLS, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  store i32 104, i32* %9, align 4
  br label %197

197:                                              ; preds = %196, %189
  br label %207

198:                                              ; preds = %178
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @CTLS, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  store i32 108, i32* %9, align 4
  br label %206

206:                                              ; preds = %205, %198
  br label %207

207:                                              ; preds = %178, %206, %197, %188
  br label %236

208:                                              ; preds = %172
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @KB_101, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %208
  %215 = load i32, i32* %9, align 4
  switch i32 %215, label %234 [
    i32 92, label %216
    i32 104, label %225
  ]

216:                                              ; preds = %214
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @ALTS, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  store i32 84, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %216
  br label %234

225:                                              ; preds = %214
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @CTLS, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  store i32 108, i32* %9, align 4
  br label %233

233:                                              ; preds = %232, %225
  br label %234

234:                                              ; preds = %214, %233, %224
  br label %235

235:                                              ; preds = %234, %208
  br label %236

236:                                              ; preds = %235, %207
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @K_CODE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %236
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %8, align 4
  %245 = and i32 %244, 128
  %246 = or i32 %243, %245
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %3, align 8
  br label %368

248:                                              ; preds = %236
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @COMPOSE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %352

255:                                              ; preds = %248
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %8, align 4
  %258 = and i32 %257, 128
  %259 = or i32 %256, %258
  switch i32 %259, label %335 [
    i32 71, label %260
    i32 72, label %260
    i32 73, label %260
    i32 75, label %280
    i32 76, label %280
    i32 77, label %280
    i32 79, label %300
    i32 80, label %300
    i32 81, label %300
    i32 82, label %320
    i32 199, label %333
    i32 200, label %333
    i32 201, label %333
    i32 203, label %333
    i32 204, label %333
    i32 205, label %333
    i32 207, label %333
    i32 208, label %333
    i32 209, label %333
    i32 210, label %333
    i32 56, label %334
  ]

260:                                              ; preds = %255, %255, %255
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = mul nsw i64 %263, 10
  store i64 %264, i64* %262, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sub nsw i32 %265, 64
  %267 = sext i32 %266 to i64
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, %267
  store i64 %271, i64* %269, align 8
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @UCHAR_MAX, align 8
  %276 = icmp sgt i64 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %260
  %278 = load i64, i64* @ERRKEY, align 8
  store i64 %278, i64* %3, align 8
  br label %368

279:                                              ; preds = %260
  br label %14

280:                                              ; preds = %255, %255, %255
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = mul nsw i64 %283, 10
  store i64 %284, i64* %282, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sub nsw i32 %285, 71
  %287 = sext i32 %286 to i64
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, %287
  store i64 %291, i64* %289, align 8
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @UCHAR_MAX, align 8
  %296 = icmp sgt i64 %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %280
  %298 = load i64, i64* @ERRKEY, align 8
  store i64 %298, i64* %3, align 8
  br label %368

299:                                              ; preds = %280
  br label %14

300:                                              ; preds = %255, %255, %255
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = mul nsw i64 %303, 10
  store i64 %304, i64* %302, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sub nsw i32 %305, 78
  %307 = sext i32 %306 to i64
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, %307
  store i64 %311, i64* %309, align 8
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @UCHAR_MAX, align 8
  %316 = icmp sgt i64 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %300
  %318 = load i64, i64* @ERRKEY, align 8
  store i64 %318, i64* %3, align 8
  br label %368

319:                                              ; preds = %300
  br label %14

320:                                              ; preds = %255
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = mul nsw i64 %323, 10
  store i64 %324, i64* %322, align 8
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @UCHAR_MAX, align 8
  %329 = icmp sgt i64 %327, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %320
  %331 = load i64, i64* @ERRKEY, align 8
  store i64 %331, i64* %3, align 8
  br label %368

332:                                              ; preds = %320
  br label %14

333:                                              ; preds = %255, %255, %255, %255, %255, %255, %255, %255, %255, %255
  br label %14

334:                                              ; preds = %255
  br label %351

335:                                              ; preds = %255
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %338, 0
  br i1 %339, label %340, label %350

340:                                              ; preds = %335
  %341 = load i32, i32* @COMPOSE, align 4
  %342 = xor i32 %341, -1
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = and i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 1
  store i64 0, i64* %348, align 8
  %349 = load i64, i64* @ERRKEY, align 8
  store i64 %349, i64* %3, align 8
  br label %368

350:                                              ; preds = %335
  br label %351

351:                                              ; preds = %350, %334
  br label %352

352:                                              ; preds = %351, %248
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %8, align 4
  %356 = and i32 %355, 128
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 5
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 4
  %361 = call i64 @genkbd_keyaction(%struct.TYPE_5__* %353, i32 %354, i32 %356, i32* %358, i32* %360)
  store i64 %361, i64* %7, align 8
  %362 = load i64, i64* %7, align 8
  %363 = load i64, i64* @NOKEY, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %352
  br label %14

366:                                              ; preds = %352
  %367 = load i64, i64* %7, align 8
  store i64 %367, i64* %3, align 8
  br label %368

368:                                              ; preds = %366, %340, %330, %317, %297, %277, %242, %72, %59, %37, %35
  %369 = load i64, i64* %3, align 8
  ret i64 %369
}

declare dso_local i32 @read_kbd_data(i32) #1

declare dso_local i32 @read_kbd_data_no_wait(i32) #1

declare dso_local i64 @genkbd_keyaction(%struct.TYPE_5__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
