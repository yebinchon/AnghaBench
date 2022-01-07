; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vkbd/extr_vkbd.c_vkbd_read_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vkbd/extr_vkbd.c_vkbd_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32, i32 }

@COMPOSE = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@ERRKEY = common dso_local global i32 0, align 4
@NOKEY = common dso_local global i32 0, align 4
@K_RAW = common dso_local global i64 0, align 8
@KB_84 = common dso_local global i64 0, align 8
@SHIFTS = common dso_local global i32 0, align 4
@CTLS = common dso_local global i32 0, align 4
@KB_101 = common dso_local global i64 0, align 8
@ALTS = common dso_local global i32 0, align 4
@K_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @vkbd_read_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vkbd_read_char(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = call i32 @VKBD_LOCK(%struct.TYPE_8__* %14)
  br label %16

16:                                               ; preds = %376, %342, %341, %325, %302, %279, %166, %160, %150, %119, %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @COMPOSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @UCHAR_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %39)
  %41 = load i32, i32* @ERRKEY, align 4
  store i32 %41, i32* %3, align 4
  br label %381

42:                                               ; preds = %28
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %381

46:                                               ; preds = %23, %16
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @vkbd_data_read(%struct.TYPE_8__* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %53)
  %55 = load i32, i32* @NOKEY, align 4
  store i32 %55, i32* %3, align 4
  br label %381

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @K_RAW, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %381

70:                                               ; preds = %56
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 127
  store i32 %72, i32* %9, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %168 [
    i32 0, label %76
    i32 224, label %124
    i32 225, label %152
    i32 29, label %161
  ]

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  switch i32 %77, label %123 [
    i32 184, label %78
    i32 56, label %103
    i32 224, label %119
    i32 225, label %119
  ]

78:                                               ; preds = %76
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @COMPOSE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = load i32, i32* @COMPOSE, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @UCHAR_MAX, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp sgt i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %85
  br label %102

102:                                              ; preds = %101, %78
  br label %123

103:                                              ; preds = %76
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @COMPOSE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @COMPOSE, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %110, %103
  br label %123

119:                                              ; preds = %76, %76
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  br label %16

123:                                              ; preds = %76, %118, %102
  br label %168

124:                                              ; preds = %70
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  store i32 0, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  switch i32 %127, label %150 [
    i32 28, label %128
    i32 29, label %129
    i32 53, label %130
    i32 55, label %131
    i32 56, label %132
    i32 70, label %133
    i32 71, label %134
    i32 72, label %135
    i32 73, label %136
    i32 75, label %137
    i32 77, label %138
    i32 79, label %139
    i32 80, label %140
    i32 81, label %141
    i32 82, label %142
    i32 83, label %143
    i32 91, label %144
    i32 92, label %145
    i32 93, label %146
    i32 94, label %147
    i32 95, label %148
    i32 99, label %149
  ]

128:                                              ; preds = %124
  store i32 89, i32* %9, align 4
  br label %151

129:                                              ; preds = %124
  store i32 90, i32* %9, align 4
  br label %151

130:                                              ; preds = %124
  store i32 91, i32* %9, align 4
  br label %151

131:                                              ; preds = %124
  store i32 92, i32* %9, align 4
  br label %151

132:                                              ; preds = %124
  store i32 93, i32* %9, align 4
  br label %151

133:                                              ; preds = %124
  store i32 104, i32* %9, align 4
  br label %151

134:                                              ; preds = %124
  store i32 94, i32* %9, align 4
  br label %151

135:                                              ; preds = %124
  store i32 95, i32* %9, align 4
  br label %151

136:                                              ; preds = %124
  store i32 96, i32* %9, align 4
  br label %151

137:                                              ; preds = %124
  store i32 97, i32* %9, align 4
  br label %151

138:                                              ; preds = %124
  store i32 98, i32* %9, align 4
  br label %151

139:                                              ; preds = %124
  store i32 99, i32* %9, align 4
  br label %151

140:                                              ; preds = %124
  store i32 100, i32* %9, align 4
  br label %151

141:                                              ; preds = %124
  store i32 101, i32* %9, align 4
  br label %151

142:                                              ; preds = %124
  store i32 102, i32* %9, align 4
  br label %151

143:                                              ; preds = %124
  store i32 103, i32* %9, align 4
  br label %151

144:                                              ; preds = %124
  store i32 105, i32* %9, align 4
  br label %151

145:                                              ; preds = %124
  store i32 106, i32* %9, align 4
  br label %151

146:                                              ; preds = %124
  store i32 107, i32* %9, align 4
  br label %151

147:                                              ; preds = %124
  store i32 109, i32* %9, align 4
  br label %151

148:                                              ; preds = %124
  store i32 110, i32* %9, align 4
  br label %151

149:                                              ; preds = %124
  store i32 111, i32* %9, align 4
  br label %151

150:                                              ; preds = %124
  br label %16

151:                                              ; preds = %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128
  br label %168

152:                                              ; preds = %70
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  store i32 0, i32* %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %155, 29
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  store i32 29, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %152
  br label %16

161:                                              ; preds = %70
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  store i32 0, i32* %163, align 8
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 69
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %16

167:                                              ; preds = %161
  store i32 104, i32* %9, align 4
  br label %168

168:                                              ; preds = %70, %167, %151, %123
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @KB_84, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %168
  %175 = load i32, i32* %9, align 4
  switch i32 %175, label %203 [
    i32 55, label %176
    i32 69, label %185
    i32 70, label %194
  ]

176:                                              ; preds = %174
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @SHIFTS, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i32 92, i32* %9, align 4
  br label %184

184:                                              ; preds = %183, %176
  br label %203

185:                                              ; preds = %174
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CTLS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  store i32 104, i32* %9, align 4
  br label %193

193:                                              ; preds = %192, %185
  br label %203

194:                                              ; preds = %174
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @CTLS, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  store i32 108, i32* %9, align 4
  br label %202

202:                                              ; preds = %201, %194
  br label %203

203:                                              ; preds = %174, %202, %193, %184
  br label %232

204:                                              ; preds = %168
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @KB_101, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %231

210:                                              ; preds = %204
  %211 = load i32, i32* %9, align 4
  switch i32 %211, label %230 [
    i32 92, label %212
    i32 104, label %221
  ]

212:                                              ; preds = %210
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ALTS, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  store i32 84, i32* %9, align 4
  br label %220

220:                                              ; preds = %219, %212
  br label %230

221:                                              ; preds = %210
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @CTLS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %221
  store i32 108, i32* %9, align 4
  br label %229

229:                                              ; preds = %228, %221
  br label %230

230:                                              ; preds = %210, %229, %220
  br label %231

231:                                              ; preds = %230, %204
  br label %232

232:                                              ; preds = %231, %203
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @K_CODE, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %240 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %239)
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %8, align 4
  %243 = and i32 %242, 128
  %244 = or i32 %241, %243
  store i32 %244, i32* %3, align 4
  br label %381

245:                                              ; preds = %232
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @COMPOSE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %363

252:                                              ; preds = %245
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %8, align 4
  %255 = and i32 %254, 128
  %256 = or i32 %253, %255
  switch i32 %256, label %344 [
    i32 71, label %257
    i32 72, label %257
    i32 73, label %257
    i32 75, label %280
    i32 76, label %280
    i32 77, label %280
    i32 79, label %303
    i32 80, label %303
    i32 81, label %303
    i32 82, label %326
    i32 199, label %342
    i32 200, label %342
    i32 201, label %342
    i32 203, label %342
    i32 204, label %342
    i32 205, label %342
    i32 207, label %342
    i32 208, label %342
    i32 209, label %342
    i32 210, label %342
    i32 56, label %343
  ]

257:                                              ; preds = %252, %252, %252
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = mul nsw i64 %260, 10
  store i64 %261, i64* %259, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sub nsw i32 %262, 64
  %264 = sext i32 %263 to i64
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, %264
  store i64 %268, i64* %266, align 8
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* @UCHAR_MAX, align 4
  %273 = sext i32 %272 to i64
  %274 = icmp sgt i64 %271, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %257
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %277 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %276)
  %278 = load i32, i32* @ERRKEY, align 4
  store i32 %278, i32* %3, align 4
  br label %381

279:                                              ; preds = %257
  br label %16

280:                                              ; preds = %252, %252, %252
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = mul nsw i64 %283, 10
  store i64 %284, i64* %282, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sub nsw i32 %285, 71
  %287 = sext i32 %286 to i64
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, %287
  store i64 %291, i64* %289, align 8
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* @UCHAR_MAX, align 4
  %296 = sext i32 %295 to i64
  %297 = icmp sgt i64 %294, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %280
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %300 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %299)
  %301 = load i32, i32* @ERRKEY, align 4
  store i32 %301, i32* %3, align 4
  br label %381

302:                                              ; preds = %280
  br label %16

303:                                              ; preds = %252, %252, %252
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = mul nsw i64 %306, 10
  store i64 %307, i64* %305, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sub nsw i32 %308, 78
  %310 = sext i32 %309 to i64
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %313, %310
  store i64 %314, i64* %312, align 8
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load i32, i32* @UCHAR_MAX, align 4
  %319 = sext i32 %318 to i64
  %320 = icmp sgt i64 %317, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %303
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %323 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %322)
  %324 = load i32, i32* @ERRKEY, align 4
  store i32 %324, i32* %3, align 4
  br label %381

325:                                              ; preds = %303
  br label %16

326:                                              ; preds = %252
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = mul nsw i64 %329, 10
  store i64 %330, i64* %328, align 8
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* @UCHAR_MAX, align 4
  %335 = sext i32 %334 to i64
  %336 = icmp sgt i64 %333, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %326
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %339 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %338)
  %340 = load i32, i32* @ERRKEY, align 4
  store i32 %340, i32* %3, align 4
  br label %381

341:                                              ; preds = %326
  br label %16

342:                                              ; preds = %252, %252, %252, %252, %252, %252, %252, %252, %252, %252
  br label %16

343:                                              ; preds = %252
  br label %362

344:                                              ; preds = %252
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = icmp sgt i64 %347, 0
  br i1 %348, label %349, label %361

349:                                              ; preds = %344
  %350 = load i32, i32* @COMPOSE, align 4
  %351 = xor i32 %350, -1
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = and i32 %354, %351
  store i32 %355, i32* %353, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 1
  store i64 0, i64* %357, align 8
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %359 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %358)
  %360 = load i32, i32* @ERRKEY, align 4
  store i32 %360, i32* %3, align 4
  br label %381

361:                                              ; preds = %344
  br label %362

362:                                              ; preds = %361, %343
  br label %363

363:                                              ; preds = %362, %245
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %365 = load i32, i32* %9, align 4
  %366 = load i32, i32* %8, align 4
  %367 = and i32 %366, 128
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 5
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 4
  %372 = call i32 @genkbd_keyaction(%struct.TYPE_9__* %364, i32 %365, i32 %367, i32* %369, i32* %371)
  store i32 %372, i32* %7, align 4
  %373 = load i32, i32* %7, align 4
  %374 = load i32, i32* @NOKEY, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %363
  br label %16

377:                                              ; preds = %363
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %379 = call i32 @VKBD_UNLOCK(%struct.TYPE_8__* %378)
  %380 = load i32, i32* %7, align 4
  store i32 %380, i32* %3, align 4
  br label %381

381:                                              ; preds = %377, %349, %337, %321, %298, %275, %238, %66, %52, %42, %38
  %382 = load i32, i32* %3, align 4
  ret i32 %382
}

declare dso_local i32 @VKBD_LOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @VKBD_UNLOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @vkbd_data_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @genkbd_keyaction(%struct.TYPE_9__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
