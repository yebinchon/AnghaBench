; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_sts_ctl_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_sts_ctl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.atkbdc_softc = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@KBDS_CTRL_FLAG = common dso_local global i32 0, align 4
@CTRL_CMD_FLAG = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBD_DISABLE_AUX_PORT = common dso_local global i32 0, align 4
@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4
@VM_SUSPEND_RESET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @atkbdc_sts_ctl_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdc_sts_ctl_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.atkbdc_softc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %290

23:                                               ; preds = %7
  %24 = load i8*, i8** %15, align 8
  %25 = bitcast i8* %24 to %struct.atkbdc_softc*
  store %struct.atkbdc_softc* %25, %struct.atkbdc_softc** %16, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %27 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %26, i32 0, i32 7
  %28 = call i32 @pthread_mutex_lock(i32* %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %33 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %37 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %36, i32 0, i32 7
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %8, align 4
  br label %290

40:                                               ; preds = %23
  %41 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %42 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @KBDS_CTRL_FLAG, align 4
  %44 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %45 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %49 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %48, i32 0, i32 2
  store i32 0, i32* %49, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %191 [
    i32 139, label %52
    i32 133, label %62
    i32 134, label %67
    i32 132, label %67
    i32 138, label %71
    i32 137, label %75
    i32 135, label %83
    i32 129, label %83
    i32 130, label %83
    i32 131, label %83
    i32 142, label %88
    i32 140, label %96
    i32 128, label %119
    i32 143, label %124
    i32 141, label %150
    i32 136, label %177
  ]

52:                                               ; preds = %40
  %53 = load i32, i32* @CTRL_CMD_FLAG, align 4
  %54 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %55 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  %60 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %61 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %216

62:                                               ; preds = %40
  %63 = load i32, i32* @CTRL_CMD_FLAG, align 4
  %64 = or i32 %63, 85
  %65 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %66 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %216

67:                                               ; preds = %40, %40
  %68 = load i32, i32* @CTRL_CMD_FLAG, align 4
  %69 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %70 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %216

71:                                               ; preds = %40
  %72 = load i32, i32* @CTRL_CMD_FLAG, align 4
  %73 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %74 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %216

75:                                               ; preds = %40
  %76 = load i32, i32* @CTRL_CMD_FLAG, align 4
  %77 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %78 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %76, %79
  %81 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %82 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %216

83:                                               ; preds = %40, %40, %40, %40
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %87 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %216

88:                                               ; preds = %40
  %89 = load i32, i32* @KBD_DISABLE_KBD_PORT, align 4
  %90 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %91 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %216

96:                                               ; preds = %40
  %97 = load i32, i32* @KBD_DISABLE_KBD_PORT, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %100 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %98
  store i32 %104, i32* %102, align 4
  %105 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %106 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %96
  %111 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %112 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %113 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %96
  %117 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %118 = call i32 @atkbdc_poll(%struct.atkbdc_softc* %117)
  br label %216

119:                                              ; preds = %40
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %123 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %216

124:                                              ; preds = %40
  %125 = load i32, i32* @KBD_DISABLE_AUX_PORT, align 4
  %126 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %127 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %125
  store i32 %131, i32* %129, align 4
  %132 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %133 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ps2mouse_toggle(i32 %134, i32 0)
  %136 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %137 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %141 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %147 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %216

150:                                              ; preds = %40
  %151 = load i32, i32* @KBD_DISABLE_AUX_PORT, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %154 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %152
  store i32 %158, i32* %156, align 4
  %159 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %160 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ps2mouse_toggle(i32 %161, i32 1)
  %163 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %164 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @ps2mouse_fifocnt(i32 %165)
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %150
  %169 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %170 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %173 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %168, %150
  br label %216

177:                                              ; preds = %40
  %178 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %179 = load i32, i32* @VM_SUSPEND_RESET, align 4
  %180 = call i32 @vm_suspend(%struct.vmctx* %178, i32 %179)
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* @errno, align 4
  %185 = load i32, i32* @EALREADY, align 4
  %186 = icmp eq i32 %184, %185
  br label %187

187:                                              ; preds = %183, %177
  %188 = phi i1 [ true, %177 ], [ %186, %183 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  br label %216

191:                                              ; preds = %40
  %192 = load i32*, i32** %14, align 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp sge i32 %193, 33
  br i1 %194, label %195, label %215

195:                                              ; preds = %191
  %196 = load i32*, i32** %14, align 8
  %197 = load i32, i32* %196, align 4
  %198 = icmp sle i32 %197, 63
  br i1 %198, label %199, label %215

199:                                              ; preds = %195
  %200 = load i32*, i32** %14, align 8
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %201, 32
  %203 = and i32 %202, 31
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* @CTRL_CMD_FLAG, align 4
  %205 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %206 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %204, %211
  %213 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %214 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %199, %195, %191
  br label %216

216:                                              ; preds = %215, %187, %176, %124, %119, %116, %88, %83, %75, %71, %67, %62, %52
  %217 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %218 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %217, i32 0, i32 7
  %219 = call i32 @pthread_mutex_unlock(i32* %218)
  %220 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %221 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %216
  %225 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %226 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %227 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %231 = xor i32 %230, -1
  %232 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %233 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, %231
  store i32 %235, i32* %233, align 8
  %236 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %237 = call i32 @atkbdc_assert_kbd_intr(%struct.atkbdc_softc* %236)
  br label %288

238:                                              ; preds = %216
  %239 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %240 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @ps2mouse_fifocnt(i32 %241)
  %243 = icmp sgt i64 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %238
  %245 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %246 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @KBD_DISABLE_AUX_PORT, align 4
  %251 = and i32 %249, %250
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %244
  %254 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %255 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %258 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %262 = call i32 @atkbdc_assert_aux_intr(%struct.atkbdc_softc* %261)
  br label %287

263:                                              ; preds = %244, %238
  %264 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %265 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp sgt i64 %267, 0
  br i1 %268, label %269, label %286

269:                                              ; preds = %263
  %270 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %271 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @KBD_DISABLE_KBD_PORT, align 4
  %276 = and i32 %274, %275
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %269
  %279 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %280 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %281 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 8
  %284 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %285 = call i32 @atkbdc_assert_kbd_intr(%struct.atkbdc_softc* %284)
  br label %286

286:                                              ; preds = %278, %269, %263
  br label %287

287:                                              ; preds = %286, %253
  br label %288

288:                                              ; preds = %287, %224
  %289 = load i32, i32* %18, align 4
  store i32 %289, i32* %8, align 4
  br label %290

290:                                              ; preds = %288, %31, %22
  %291 = load i32, i32* %8, align 4
  ret i32 %291
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @atkbdc_poll(%struct.atkbdc_softc*) #1

declare dso_local i32 @ps2mouse_toggle(i32, i32) #1

declare dso_local i64 @ps2mouse_fifocnt(i32) #1

declare dso_local i32 @vm_suspend(%struct.vmctx*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atkbdc_assert_kbd_intr(%struct.atkbdc_softc*) #1

declare dso_local i32 @atkbdc_assert_aux_intr(%struct.atkbdc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
