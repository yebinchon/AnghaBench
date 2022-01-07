; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/quirk/extr_usb_quirk.c_usb_quirk_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/quirk/extr_usb_quirk.c_usb_quirk_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.usb_gen_quirk = type { i64, i32, i32, i32, i32, i32 }
%struct.usb_quirk_entry = type { i64* }

@USB_SUB_QUIRKS_MAX = common dso_local global i64 0, align 8
@USB_DEV_QUIRKS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@usb_quirk_mtx = common dso_local global i32 0, align 4
@usb_quirks = common dso_local global %struct.TYPE_2__* null, align 8
@USB_QUIRK_MAX = common dso_local global i64 0, align 8
@curthread = common dso_local global i32 0, align 4
@PRIV_DRIVER = common dso_local global i32 0, align 4
@UQ_NONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, %struct.thread*)* @usb_quirk_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_quirk_ioctl(i64 %0, i64 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.usb_gen_quirk*, align 8
  %11 = alloca %struct.usb_quirk_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %15 = load i64, i64* %6, align 8
  switch i64 %15, label %313 [
    i64 130, label %16
    i64 128, label %79
    i64 131, label %98
    i64 129, label %192
  ]

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.usb_gen_quirk*
  store %struct.usb_gen_quirk* %19, %struct.usb_gen_quirk** %10, align 8
  %20 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %21 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %24 = urem i64 %22, %23
  store i64 %24, i64* %12, align 8
  %25 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %26 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %29 = udiv i64 %27, %28
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @USB_DEV_QUIRKS_MAX, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %316

35:                                               ; preds = %16
  %36 = call i32 @USB_MTX_LOCK(i32* @usb_quirk_mtx)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %43 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %50 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %57 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %64 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %66 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_quirks, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @usb_quirkstr(i64 %75)
  %77 = call i32 @strlcpy(i32 %67, i32 %76, i32 4)
  %78 = call i32 @USB_MTX_UNLOCK(i32* @usb_quirk_mtx)
  store i32 0, i32* %5, align 4
  br label %316

79:                                               ; preds = %4
  %80 = load i64, i64* %7, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = bitcast i8* %81 to %struct.usb_gen_quirk*
  store %struct.usb_gen_quirk* %82, %struct.usb_gen_quirk** %10, align 8
  %83 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %84 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @USB_QUIRK_MAX, align 8
  %88 = icmp uge i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %5, align 4
  br label %316

91:                                               ; preds = %79
  %92 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %93 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @usb_quirkstr(i64 %95)
  %97 = call i32 @strlcpy(i32 %94, i32 %96, i32 4)
  store i32 0, i32* %5, align 4
  br label %316

98:                                               ; preds = %4
  %99 = load i64, i64* %7, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = bitcast i8* %100 to %struct.usb_gen_quirk*
  store %struct.usb_gen_quirk* %101, %struct.usb_gen_quirk** %10, align 8
  %102 = load i32, i32* @curthread, align 4
  %103 = load i32, i32* @PRIV_DRIVER, align 4
  %104 = call i32 @priv_check(i32 %102, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %5, align 4
  br label %316

109:                                              ; preds = %98
  store i64 0, i64* %13, align 8
  br label %110

110:                                              ; preds = %124, %109
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* @USB_DEV_QUIRKS_MAX, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %116 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* %13, align 8
  %119 = call i32 @usb_quirkstr(i64 %118)
  %120 = call i32 @strcmp(i32 %117, i32 %119)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %127

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %13, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %13, align 8
  br label %110

127:                                              ; preds = %122, %110
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* @USB_DEV_QUIRKS_MAX, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %5, align 4
  br label %316

133:                                              ; preds = %127
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* @UQ_NONE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @EINVAL, align 4
  store i32 %138, i32* %5, align 4
  br label %316

139:                                              ; preds = %133
  %140 = call i32 @USB_MTX_LOCK(i32* @usb_quirk_mtx)
  %141 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %142 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %145 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %148 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %151 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call %struct.usb_quirk_entry* @usb_quirk_get_entry(i32 %143, i32 %146, i32 %149, i32 %152, i32 1)
  store %struct.usb_quirk_entry* %153, %struct.usb_quirk_entry** %11, align 8
  %154 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %11, align 8
  %155 = icmp eq %struct.usb_quirk_entry* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %139
  %157 = call i32 @USB_MTX_UNLOCK(i32* @usb_quirk_mtx)
  %158 = load i32, i32* @EINVAL, align 4
  store i32 %158, i32* %5, align 4
  br label %316

159:                                              ; preds = %139
  store i64 0, i64* %12, align 8
  br label %160

160:                                              ; preds = %181, %159
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %160
  %165 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %11, align 8
  %166 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* %12, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @UQ_NONE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %164
  %174 = load i64, i64* %13, align 8
  %175 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %11, align 8
  %176 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = load i64, i64* %12, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 %174, i64* %179, align 8
  br label %184

180:                                              ; preds = %164
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %12, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %12, align 8
  br label %160

184:                                              ; preds = %173, %160
  %185 = call i32 @USB_MTX_UNLOCK(i32* @usb_quirk_mtx)
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* @ENOMEM, align 4
  store i32 %190, i32* %5, align 4
  br label %316

191:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %316

192:                                              ; preds = %4
  %193 = load i64, i64* %7, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = bitcast i8* %194 to %struct.usb_gen_quirk*
  store %struct.usb_gen_quirk* %195, %struct.usb_gen_quirk** %10, align 8
  %196 = load i32, i32* @curthread, align 4
  %197 = load i32, i32* @PRIV_DRIVER, align 4
  %198 = call i32 @priv_check(i32 %196, i32 %197)
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = load i32, i32* %14, align 4
  store i32 %202, i32* %5, align 4
  br label %316

203:                                              ; preds = %192
  store i64 0, i64* %13, align 8
  br label %204

204:                                              ; preds = %218, %203
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* @USB_DEV_QUIRKS_MAX, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %204
  %209 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %210 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load i64, i64* %13, align 8
  %213 = call i32 @usb_quirkstr(i64 %212)
  %214 = call i32 @strcmp(i32 %211, i32 %213)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  br label %221

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %13, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %13, align 8
  br label %204

221:                                              ; preds = %216, %204
  %222 = load i64, i64* %13, align 8
  %223 = load i64, i64* @USB_DEV_QUIRKS_MAX, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i32, i32* @EINVAL, align 4
  store i32 %226, i32* %5, align 4
  br label %316

227:                                              ; preds = %221
  %228 = load i64, i64* %13, align 8
  %229 = load i64, i64* @UQ_NONE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* %5, align 4
  br label %316

233:                                              ; preds = %227
  %234 = call i32 @USB_MTX_LOCK(i32* @usb_quirk_mtx)
  %235 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %236 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %239 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %242 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.usb_gen_quirk*, %struct.usb_gen_quirk** %10, align 8
  %245 = getelementptr inbounds %struct.usb_gen_quirk, %struct.usb_gen_quirk* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call %struct.usb_quirk_entry* @usb_quirk_get_entry(i32 %237, i32 %240, i32 %243, i32 %246, i32 0)
  store %struct.usb_quirk_entry* %247, %struct.usb_quirk_entry** %11, align 8
  %248 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %11, align 8
  %249 = icmp eq %struct.usb_quirk_entry* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %233
  %251 = call i32 @USB_MTX_UNLOCK(i32* @usb_quirk_mtx)
  %252 = load i32, i32* @EINVAL, align 4
  store i32 %252, i32* %5, align 4
  br label %316

253:                                              ; preds = %233
  store i64 0, i64* %12, align 8
  br label %254

254:                                              ; preds = %275, %253
  %255 = load i64, i64* %12, align 8
  %256 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %278

258:                                              ; preds = %254
  %259 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %11, align 8
  %260 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %259, i32 0, i32 0
  %261 = load i64*, i64** %260, align 8
  %262 = load i64, i64* %12, align 8
  %263 = getelementptr inbounds i64, i64* %261, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* %13, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %274

267:                                              ; preds = %258
  %268 = load i64, i64* @UQ_NONE, align 8
  %269 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %11, align 8
  %270 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = load i64, i64* %12, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  store i64 %268, i64* %273, align 8
  br label %278

274:                                              ; preds = %258
  br label %275

275:                                              ; preds = %274
  %276 = load i64, i64* %12, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %12, align 8
  br label %254

278:                                              ; preds = %267, %254
  %279 = load i64, i64* %12, align 8
  %280 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = call i32 @USB_MTX_UNLOCK(i32* @usb_quirk_mtx)
  %284 = load i32, i32* @ENOMEM, align 4
  store i32 %284, i32* %5, align 4
  br label %316

285:                                              ; preds = %278
  store i64 0, i64* %12, align 8
  br label %286

286:                                              ; preds = %301, %285
  %287 = load i64, i64* %12, align 8
  %288 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %286
  %291 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %11, align 8
  %292 = getelementptr inbounds %struct.usb_quirk_entry, %struct.usb_quirk_entry* %291, i32 0, i32 0
  %293 = load i64*, i64** %292, align 8
  %294 = load i64, i64* %12, align 8
  %295 = getelementptr inbounds i64, i64* %293, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @UQ_NONE, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %290
  br label %304

300:                                              ; preds = %290
  br label %301

301:                                              ; preds = %300
  %302 = load i64, i64* %12, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %12, align 8
  br label %286

304:                                              ; preds = %299, %286
  %305 = load i64, i64* %12, align 8
  %306 = load i64, i64* @USB_SUB_QUIRKS_MAX, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load %struct.usb_quirk_entry*, %struct.usb_quirk_entry** %11, align 8
  %310 = call i32 @memset(%struct.usb_quirk_entry* %309, i32 0, i32 8)
  br label %311

311:                                              ; preds = %308, %304
  %312 = call i32 @USB_MTX_UNLOCK(i32* @usb_quirk_mtx)
  store i32 0, i32* %5, align 4
  br label %316

313:                                              ; preds = %4
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* @ENOIOCTL, align 4
  store i32 %315, i32* %5, align 4
  br label %316

316:                                              ; preds = %314, %311, %282, %250, %231, %225, %201, %191, %189, %156, %137, %131, %107, %91, %89, %35, %33
  %317 = load i32, i32* %5, align 4
  ret i32 %317
}

declare dso_local i32 @USB_MTX_LOCK(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @usb_quirkstr(i64) #1

declare dso_local i32 @USB_MTX_UNLOCK(i32*) #1

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.usb_quirk_entry* @usb_quirk_get_entry(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.usb_quirk_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
