; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_lock_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_lock_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.umtx_q* }
%struct.umtx_q = type { i32 }
%struct.umutex = type { i32 }
%struct._umtx_time = type { i32 }
%struct.abs_timeout = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@_UMUTEX_WAIT = common dso_local global i32 0, align 4
@UMUTEX_UNOWNED = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@UMUTEX_RB_OWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@_UMUTEX_TRY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TYPE_NORMAL_UMUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"umtxn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.umutex*, i32, %struct._umtx_time*, i32)* @do_lock_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lock_normal(%struct.thread* %0, %struct.umutex* %1, i32 %2, %struct._umtx_time* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.umutex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._umtx_time*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.abs_timeout, align 4
  %13 = alloca %struct.umtx_q*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.umutex* %1, %struct.umutex** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct._umtx_time* %3, %struct._umtx_time** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.thread*, %struct.thread** %7, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 4
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load %struct.umtx_q*, %struct.umtx_q** %23, align 8
  store %struct.umtx_q* %24, %struct.umtx_q** %13, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct._umtx_time*, %struct._umtx_time** %10, align 8
  %26 = icmp ne %struct._umtx_time* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct._umtx_time*, %struct._umtx_time** %10, align 8
  %29 = call i32 @abs_timeout_init2(%struct.abs_timeout* %12, %struct._umtx_time* %28)
  br label %30

30:                                               ; preds = %27, %5
  br label %31

31:                                               ; preds = %283, %249, %164, %98, %30
  %32 = load %struct.umutex*, %struct.umutex** %8, align 8
  %33 = getelementptr inbounds %struct.umutex, %struct.umutex* %32, i32 0, i32 0
  %34 = call i32 @fueword32(i32* %33, i32* %14)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EFAULT, align 4
  store i32 %38, i32* %6, align 4
  br label %284

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @_UMUTEX_WAIT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @UMUTEX_UNOWNED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51, %47, %43
  store i32 0, i32* %6, align 4
  br label %284

60:                                               ; preds = %55
  br label %173

61:                                               ; preds = %39
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %61
  %66 = load %struct.umutex*, %struct.umutex** %8, align 8
  %67 = getelementptr inbounds %struct.umutex, %struct.umutex* %66, i32 0, i32 0
  %68 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @casueword32(i32* %67, i32 %68, i32* %14, i32 %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @EFAULT, align 4
  store i32 %76, i32* %6, align 4
  br label %284

77:                                               ; preds = %65
  %78 = load i32, i32* %18, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @MPASS(i32 %84)
  %86 = load i32, i32* @EOWNERDEAD, align 4
  store i32 %86, i32* %6, align 4
  br label %284

87:                                               ; preds = %77
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = call i32 @MPASS(i32 %90)
  %92 = load %struct.thread*, %struct.thread** %7, align 8
  %93 = call i32 @umtxq_check_susp(%struct.thread* %92, i32 0)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %6, align 4
  br label %284

98:                                               ; preds = %87
  br label %31

99:                                               ; preds = %61
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %104, i32* %6, align 4
  br label %284

105:                                              ; preds = %99
  %106 = load %struct.umutex*, %struct.umutex** %8, align 8
  %107 = getelementptr inbounds %struct.umutex, %struct.umutex* %106, i32 0, i32 0
  %108 = load i32, i32* @UMUTEX_UNOWNED, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @casueword32(i32* %107, i32 %108, i32* %14, i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @EFAULT, align 4
  store i32 %114, i32* %6, align 4
  br label %284

115:                                              ; preds = %105
  %116 = load i32, i32* %18, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @UMUTEX_UNOWNED, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @MPASS(i32 %122)
  store i32 0, i32* %6, align 4
  br label %284

124:                                              ; preds = %115
  %125 = load i32, i32* %18, align 4
  %126 = icmp eq i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = call i32 @MPASS(i32 %127)
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %124
  %133 = load %struct.umutex*, %struct.umutex** %8, align 8
  %134 = getelementptr inbounds %struct.umutex, %struct.umutex* %133, i32 0, i32 0
  %135 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @casueword32(i32* %134, i32 %135, i32* %14, i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* @EFAULT, align 4
  store i32 %143, i32* %6, align 4
  br label %284

144:                                              ; preds = %132
  %145 = load i32, i32* %18, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @MPASS(i32 %151)
  store i32 0, i32* %6, align 4
  br label %284

153:                                              ; preds = %144
  %154 = load i32, i32* %18, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load %struct.thread*, %struct.thread** %7, align 8
  %158 = call i32 @umtxq_check_susp(%struct.thread* %157, i32 0)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %6, align 4
  br label %284

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %153
  br label %31

165:                                              ; preds = %124
  %166 = load %struct.thread*, %struct.thread** %7, align 8
  %167 = call i32 @umtxq_check_susp(%struct.thread* %166, i32 0)
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* %18, align 4
  store i32 %171, i32* %6, align 4
  br label %284

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %60
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @_UMUTEX_TRY, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i32, i32* @EBUSY, align 4
  store i32 %178, i32* %6, align 4
  br label %284

179:                                              ; preds = %173
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* %17, align 4
  store i32 %183, i32* %6, align 4
  br label %284

184:                                              ; preds = %179
  %185 = load %struct.umutex*, %struct.umutex** %8, align 8
  %186 = load i32, i32* @TYPE_NORMAL_UMUTEX, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @GET_SHARE(i32 %187)
  %189 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %190 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %189, i32 0, i32 0
  %191 = call i32 @umtx_key_get(%struct.umutex* %185, i32 %186, i32 %188, i32* %190)
  store i32 %191, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = load i32, i32* %17, align 4
  store i32 %194, i32* %6, align 4
  br label %284

195:                                              ; preds = %184
  %196 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %197 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %196, i32 0, i32 0
  %198 = call i32 @umtxq_lock(i32* %197)
  %199 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %200 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %199, i32 0, i32 0
  %201 = call i32 @umtxq_busy(i32* %200)
  %202 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %203 = call i32 @umtxq_insert(%struct.umtx_q* %202)
  %204 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %205 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %204, i32 0, i32 0
  %206 = call i32 @umtxq_unlock(i32* %205)
  %207 = load %struct.umutex*, %struct.umutex** %8, align 8
  %208 = getelementptr inbounds %struct.umutex, %struct.umutex* %207, i32 0, i32 0
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @casueword32(i32* %208, i32 %209, i32* %15, i32 %212)
  store i32 %213, i32* %18, align 4
  %214 = load i32, i32* %18, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %219, label %216

216:                                              ; preds = %195
  %217 = load i32, i32* %18, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %250

219:                                              ; preds = %216, %195
  %220 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %221 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %220, i32 0, i32 0
  %222 = call i32 @umtxq_lock(i32* %221)
  %223 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %224 = call i32 @umtxq_remove(%struct.umtx_q* %223)
  %225 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %226 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %225, i32 0, i32 0
  %227 = call i32 @umtxq_unbusy(i32* %226)
  %228 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %229 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %228, i32 0, i32 0
  %230 = call i32 @umtxq_unlock(i32* %229)
  %231 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %232 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %231, i32 0, i32 0
  %233 = call i32 @umtx_key_release(i32* %232)
  %234 = load i32, i32* %18, align 4
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %236, label %238

236:                                              ; preds = %219
  %237 = load i32, i32* @EFAULT, align 4
  store i32 %237, i32* %6, align 4
  br label %284

238:                                              ; preds = %219
  %239 = load i32, i32* %18, align 4
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %249

241:                                              ; preds = %238
  %242 = load %struct.thread*, %struct.thread** %7, align 8
  %243 = call i32 @umtxq_check_susp(%struct.thread* %242, i32 0)
  store i32 %243, i32* %18, align 4
  %244 = load i32, i32* %18, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = load i32, i32* %18, align 4
  store i32 %247, i32* %6, align 4
  br label %284

248:                                              ; preds = %241
  br label %249

249:                                              ; preds = %248, %238
  br label %31

250:                                              ; preds = %216
  %251 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %252 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %251, i32 0, i32 0
  %253 = call i32 @umtxq_lock(i32* %252)
  %254 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %255 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %254, i32 0, i32 0
  %256 = call i32 @umtxq_unbusy(i32* %255)
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* %14, align 4
  %259 = icmp eq i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @MPASS(i32 %260)
  %262 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %263 = load %struct._umtx_time*, %struct._umtx_time** %10, align 8
  %264 = icmp eq %struct._umtx_time* %263, null
  br i1 %264, label %265, label %266

265:                                              ; preds = %250
  br label %267

266:                                              ; preds = %250
  br label %267

267:                                              ; preds = %266, %265
  %268 = phi %struct.abs_timeout* [ null, %265 ], [ %12, %266 ]
  %269 = call i32 @umtxq_sleep(%struct.umtx_q* %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.abs_timeout* %268)
  store i32 %269, i32* %17, align 4
  %270 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %271 = call i32 @umtxq_remove(%struct.umtx_q* %270)
  %272 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %273 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %272, i32 0, i32 0
  %274 = call i32 @umtxq_unlock(i32* %273)
  %275 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %276 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %275, i32 0, i32 0
  %277 = call i32 @umtx_key_release(i32* %276)
  %278 = load i32, i32* %17, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %267
  %281 = load %struct.thread*, %struct.thread** %7, align 8
  %282 = call i32 @umtxq_check_susp(%struct.thread* %281, i32 0)
  store i32 %282, i32* %17, align 4
  br label %283

283:                                              ; preds = %280, %267
  br label %31

284:                                              ; preds = %246, %236, %193, %182, %177, %170, %161, %147, %142, %118, %113, %103, %96, %80, %75, %59, %37
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

declare dso_local i32 @abs_timeout_init2(%struct.abs_timeout*, %struct._umtx_time*) #1

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @casueword32(i32*, i32, i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i32 @umtx_key_get(%struct.umutex*, i32, i32, i32*) #1

declare dso_local i32 @GET_SHARE(i32) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local i32 @umtxq_busy(i32*) #1

declare dso_local i32 @umtxq_insert(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @umtxq_remove(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_unbusy(i32*) #1

declare dso_local i32 @umtx_key_release(i32*) #1

declare dso_local i32 @umtxq_sleep(%struct.umtx_q*, i8*, %struct.abs_timeout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
