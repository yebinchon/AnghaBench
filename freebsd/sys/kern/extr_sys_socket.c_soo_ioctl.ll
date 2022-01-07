; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_9__*, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.socket*, i32, i8*, i32, %struct.thread*)* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@SS_NBIO = common dso_local global i32 0, align 4
@SS_ASYNC = common dso_local global i32 0, align 4
@SB_ASYNC = common dso_local global i32 0, align 4
@SBS_RCVATMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)* @soo_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soo_ioctl(%struct.file* %0, i32 %1, i8* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %231 [
    i32 135, label %17
    i32 137, label %40
    i32 134, label %151
    i32 132, label %157
    i32 133, label %163
    i32 131, label %192
    i32 136, label %199
    i32 128, label %205
    i32 129, label %213
    i32 130, label %220
  ]

17:                                               ; preds = %5
  %18 = load %struct.socket*, %struct.socket** %11, align 8
  %19 = call i32 @SOCK_LOCK(%struct.socket* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @SS_NBIO, align 4
  %26 = load %struct.socket*, %struct.socket** %11, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %37

30:                                               ; preds = %17
  %31 = load i32, i32* @SS_NBIO, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.socket*, %struct.socket** %11, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.socket*, %struct.socket** %11, align 8
  %39 = call i32 @SOCK_UNLOCK(%struct.socket* %38)
  br label %279

40:                                               ; preds = %5
  %41 = load i8*, i8** %8, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %40
  %46 = load %struct.socket*, %struct.socket** %11, align 8
  %47 = call i32 @SOCK_LOCK(%struct.socket* %46)
  %48 = load i32, i32* @SS_ASYNC, align 4
  %49 = load %struct.socket*, %struct.socket** %11, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.socket*, %struct.socket** %11, align 8
  %54 = call i32 @SOLISTENING(%struct.socket* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load i32, i32* @SB_ASYNC, align 4
  %58 = load %struct.socket*, %struct.socket** %11, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @SB_ASYNC, align 4
  %63 = load %struct.socket*, %struct.socket** %11, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %92

67:                                               ; preds = %45
  %68 = load %struct.socket*, %struct.socket** %11, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 3
  %70 = call i32 @SOCKBUF_LOCK(%struct.TYPE_10__* %69)
  %71 = load i32, i32* @SB_ASYNC, align 4
  %72 = load %struct.socket*, %struct.socket** %11, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.socket*, %struct.socket** %11, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 3
  %79 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__* %78)
  %80 = load %struct.socket*, %struct.socket** %11, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 5
  %82 = call i32 @SOCKBUF_LOCK(%struct.TYPE_10__* %81)
  %83 = load i32, i32* @SB_ASYNC, align 4
  %84 = load %struct.socket*, %struct.socket** %11, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load %struct.socket*, %struct.socket** %11, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 5
  %91 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__* %90)
  br label %92

92:                                               ; preds = %67, %56
  %93 = load %struct.socket*, %struct.socket** %11, align 8
  %94 = call i32 @SOCK_UNLOCK(%struct.socket* %93)
  br label %150

95:                                               ; preds = %40
  %96 = load %struct.socket*, %struct.socket** %11, align 8
  %97 = call i32 @SOCK_LOCK(%struct.socket* %96)
  %98 = load i32, i32* @SS_ASYNC, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.socket*, %struct.socket** %11, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.socket*, %struct.socket** %11, align 8
  %105 = call i32 @SOLISTENING(%struct.socket* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %95
  %108 = load i32, i32* @SB_ASYNC, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.socket*, %struct.socket** %11, align 8
  %111 = getelementptr inbounds %struct.socket, %struct.socket* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @SB_ASYNC, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.socket*, %struct.socket** %11, align 8
  %117 = getelementptr inbounds %struct.socket, %struct.socket* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %147

120:                                              ; preds = %95
  %121 = load %struct.socket*, %struct.socket** %11, align 8
  %122 = getelementptr inbounds %struct.socket, %struct.socket* %121, i32 0, i32 3
  %123 = call i32 @SOCKBUF_LOCK(%struct.TYPE_10__* %122)
  %124 = load i32, i32* @SB_ASYNC, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.socket*, %struct.socket** %11, align 8
  %127 = getelementptr inbounds %struct.socket, %struct.socket* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 8
  %131 = load %struct.socket*, %struct.socket** %11, align 8
  %132 = getelementptr inbounds %struct.socket, %struct.socket* %131, i32 0, i32 3
  %133 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__* %132)
  %134 = load %struct.socket*, %struct.socket** %11, align 8
  %135 = getelementptr inbounds %struct.socket, %struct.socket* %134, i32 0, i32 5
  %136 = call i32 @SOCKBUF_LOCK(%struct.TYPE_10__* %135)
  %137 = load i32, i32* @SB_ASYNC, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.socket*, %struct.socket** %11, align 8
  %140 = getelementptr inbounds %struct.socket, %struct.socket* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %138
  store i32 %143, i32* %141, align 8
  %144 = load %struct.socket*, %struct.socket** %11, align 8
  %145 = getelementptr inbounds %struct.socket, %struct.socket* %144, i32 0, i32 5
  %146 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__* %145)
  br label %147

147:                                              ; preds = %120, %107
  %148 = load %struct.socket*, %struct.socket** %11, align 8
  %149 = call i32 @SOCK_UNLOCK(%struct.socket* %148)
  br label %150

150:                                              ; preds = %147, %92
  br label %279

151:                                              ; preds = %5
  %152 = load %struct.socket*, %struct.socket** %11, align 8
  %153 = getelementptr inbounds %struct.socket, %struct.socket* %152, i32 0, i32 3
  %154 = call i32 @sbavail(%struct.TYPE_10__* %153)
  %155 = load i8*, i8** %8, align 8
  %156 = bitcast i8* %155 to i32*
  store i32 %154, i32* %156, align 4
  br label %279

157:                                              ; preds = %5
  %158 = load %struct.socket*, %struct.socket** %11, align 8
  %159 = getelementptr inbounds %struct.socket, %struct.socket* %158, i32 0, i32 5
  %160 = call i32 @sbavail(%struct.TYPE_10__* %159)
  %161 = load i8*, i8** %8, align 8
  %162 = bitcast i8* %161 to i32*
  store i32 %160, i32* %162, align 4
  br label %279

163:                                              ; preds = %5
  %164 = load %struct.socket*, %struct.socket** %11, align 8
  %165 = getelementptr inbounds %struct.socket, %struct.socket* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.socket*, %struct.socket** %11, align 8
  %169 = getelementptr inbounds %struct.socket, %struct.socket* %168, i32 0, i32 5
  %170 = call i32 @sbused(%struct.TYPE_10__* %169)
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %182, label %172

172:                                              ; preds = %163
  %173 = load %struct.socket*, %struct.socket** %11, align 8
  %174 = getelementptr inbounds %struct.socket, %struct.socket* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.socket*, %struct.socket** %11, align 8
  %178 = getelementptr inbounds %struct.socket, %struct.socket* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %172, %163
  %183 = load i8*, i8** %8, align 8
  %184 = bitcast i8* %183 to i32*
  store i32 0, i32* %184, align 4
  br label %191

185:                                              ; preds = %172
  %186 = load %struct.socket*, %struct.socket** %11, align 8
  %187 = getelementptr inbounds %struct.socket, %struct.socket* %186, i32 0, i32 5
  %188 = call i32 @sbspace(%struct.TYPE_10__* %187)
  %189 = load i8*, i8** %8, align 8
  %190 = bitcast i8* %189 to i32*
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %185, %182
  br label %279

192:                                              ; preds = %5
  %193 = load i8*, i8** %8, align 8
  %194 = bitcast i8* %193 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.socket*, %struct.socket** %11, align 8
  %197 = getelementptr inbounds %struct.socket, %struct.socket* %196, i32 0, i32 4
  %198 = call i32 @fsetown(i32 %195, i32* %197)
  store i32 %198, i32* %12, align 4
  br label %279

199:                                              ; preds = %5
  %200 = load %struct.socket*, %struct.socket** %11, align 8
  %201 = getelementptr inbounds %struct.socket, %struct.socket* %200, i32 0, i32 4
  %202 = call i32 @fgetown(i32* %201)
  %203 = load i8*, i8** %8, align 8
  %204 = bitcast i8* %203 to i32*
  store i32 %202, i32* %204, align 4
  br label %279

205:                                              ; preds = %5
  %206 = load i8*, i8** %8, align 8
  %207 = bitcast i8* %206 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 0, %208
  %210 = load %struct.socket*, %struct.socket** %11, align 8
  %211 = getelementptr inbounds %struct.socket, %struct.socket* %210, i32 0, i32 4
  %212 = call i32 @fsetown(i32 %209, i32* %211)
  store i32 %212, i32* %12, align 4
  br label %279

213:                                              ; preds = %5
  %214 = load %struct.socket*, %struct.socket** %11, align 8
  %215 = getelementptr inbounds %struct.socket, %struct.socket* %214, i32 0, i32 4
  %216 = call i32 @fgetown(i32* %215)
  %217 = sub nsw i32 0, %216
  %218 = load i8*, i8** %8, align 8
  %219 = bitcast i8* %218 to i32*
  store i32 %217, i32* %219, align 4
  br label %279

220:                                              ; preds = %5
  %221 = load %struct.socket*, %struct.socket** %11, align 8
  %222 = getelementptr inbounds %struct.socket, %struct.socket* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @SBS_RCVATMARK, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = load i8*, i8** %8, align 8
  %230 = bitcast i8* %229 to i32*
  store i32 %228, i32* %230, align 4
  br label %279

231:                                              ; preds = %5
  %232 = load i32, i32* %7, align 4
  %233 = call signext i8 @IOCGROUP(i32 %232)
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 105
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = load %struct.socket*, %struct.socket** %11, align 8
  %238 = load i32, i32* %7, align 4
  %239 = load i8*, i8** %8, align 8
  %240 = load %struct.thread*, %struct.thread** %10, align 8
  %241 = call i32 @ifioctl(%struct.socket* %237, i32 %238, i8* %239, %struct.thread* %240)
  store i32 %241, i32* %12, align 4
  br label %278

242:                                              ; preds = %231
  %243 = load i32, i32* %7, align 4
  %244 = call signext i8 @IOCGROUP(i32 %243)
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 114
  br i1 %246, label %247, label %259

247:                                              ; preds = %242
  %248 = load %struct.socket*, %struct.socket** %11, align 8
  %249 = getelementptr inbounds %struct.socket, %struct.socket* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @CURVNET_SET(i32 %250)
  %252 = load i32, i32* %7, align 4
  %253 = load i8*, i8** %8, align 8
  %254 = load %struct.socket*, %struct.socket** %11, align 8
  %255 = getelementptr inbounds %struct.socket, %struct.socket* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @rtioctl_fib(i32 %252, i8* %253, i32 %256)
  store i32 %257, i32* %12, align 4
  %258 = call i32 (...) @CURVNET_RESTORE()
  br label %277

259:                                              ; preds = %242
  %260 = load %struct.socket*, %struct.socket** %11, align 8
  %261 = getelementptr inbounds %struct.socket, %struct.socket* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @CURVNET_SET(i32 %262)
  %264 = load %struct.socket*, %struct.socket** %11, align 8
  %265 = getelementptr inbounds %struct.socket, %struct.socket* %264, i32 0, i32 0
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32 (%struct.socket*, i32, i8*, i32, %struct.thread*)*, i32 (%struct.socket*, i32, i8*, i32, %struct.thread*)** %269, align 8
  %271 = load %struct.socket*, %struct.socket** %11, align 8
  %272 = load i32, i32* %7, align 4
  %273 = load i8*, i8** %8, align 8
  %274 = load %struct.thread*, %struct.thread** %10, align 8
  %275 = call i32 %270(%struct.socket* %271, i32 %272, i8* %273, i32 0, %struct.thread* %274)
  store i32 %275, i32* %12, align 4
  %276 = call i32 (...) @CURVNET_RESTORE()
  br label %277

277:                                              ; preds = %259, %247
  br label %278

278:                                              ; preds = %277, %236
  br label %279

279:                                              ; preds = %278, %220, %213, %205, %199, %192, %191, %157, %151, %150, %37
  %280 = load i32, i32* %12, align 4
  ret i32 %280
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @sbavail(%struct.TYPE_10__*) #1

declare dso_local i32 @sbused(%struct.TYPE_10__*) #1

declare dso_local i32 @sbspace(%struct.TYPE_10__*) #1

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @fgetown(i32*) #1

declare dso_local signext i8 @IOCGROUP(i32) #1

declare dso_local i32 @ifioctl(%struct.socket*, i32, i8*, %struct.thread*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @rtioctl_fib(i32, i8*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
