; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_fill_kinfo_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_fill_kinfo_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, %struct.proc* }
%struct.TYPE_4__ = type { i32 }
%struct.proc = type { i64, i32 }
%struct.kinfo_proc = type { i64, i64, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.thread* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@KI_LOCKBLOCK = common dso_local global i32 0, align 4
@PRS_NORMAL = common dso_local global i64 0, align 8
@SRUN = common dso_local global i32 0, align 4
@SSTOP = common dso_local global i32 0, align 4
@SSLEEP = common dso_local global i32 0, align 4
@SLOCK = common dso_local global i32 0, align 4
@SWAIT = common dso_local global i32 0, align 4
@PRS_ZOMBIE = common dso_local global i64 0, align 8
@SZOMB = common dso_local global i32 0, align 4
@SIDL = common dso_local global i32 0, align 4
@NOCPU = common dso_local global i64 0, align 8
@NOCPU_OLD = common dso_local global i8* null, align 8
@MAXCPU_OLD = common dso_local global i64 0, align 8
@ticks = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.kinfo_proc*, i32)* @fill_kinfo_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_kinfo_thread(%struct.thread* %0, %struct.kinfo_proc* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 19
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %7, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %13 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %12, i32 0, i32 26
  store %struct.thread* %11, %struct.thread** %13, align 8
  %14 = load %struct.proc*, %struct.proc** %7, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.proc*, %struct.proc** %7, align 8
  %21 = call i32 @PROC_STATLOCK(%struct.proc* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = call i32 @thread_lock(%struct.thread* %23)
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 18
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %31 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %30, i32 0, i32 25
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 18
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @strlcpy(i32 %32, i32* %35, i32 4)
  br label %42

37:                                               ; preds = %22
  %38 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %39 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %38, i32 0, i32 25
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bzero(i32 %40, i32 4)
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %44 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %43, i32 0, i32 24
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 17
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @strlcpy(i32 %45, i32* %48, i32 4)
  %50 = sext i32 %49 to i64
  %51 = icmp uge i64 %50, 4
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %54 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %53, i32 0, i32 23
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 17
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = getelementptr inbounds i32, i32* %59, i64 -1
  %61 = call i32 @strlcpy(i32 %55, i32* %60, i32 4)
  br label %67

62:                                               ; preds = %42
  %63 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %64 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %63, i32 0, i32 23
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bzero(i32 %65, i32 4)
  br label %67

67:                                               ; preds = %62, %52
  %68 = load %struct.thread*, %struct.thread** %4, align 8
  %69 = call i64 @TD_ON_LOCK(%struct.thread* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i32, i32* @KI_LOCKBLOCK, align 4
  %73 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %74 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %73, i32 0, i32 22
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %78 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %77, i32 0, i32 21
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.thread*, %struct.thread** %4, align 8
  %81 = getelementptr inbounds %struct.thread, %struct.thread* %80, i32 0, i32 16
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @strlcpy(i32 %79, i32* %82, i32 4)
  br label %95

84:                                               ; preds = %67
  %85 = load i32, i32* @KI_LOCKBLOCK, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %88 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %87, i32 0, i32 22
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %92 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %91, i32 0, i32 21
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bzero(i32 %93, i32 4)
  br label %95

95:                                               ; preds = %84, %71
  %96 = load %struct.proc*, %struct.proc** %7, align 8
  %97 = getelementptr inbounds %struct.proc, %struct.proc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PRS_NORMAL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %149

101:                                              ; preds = %95
  %102 = load %struct.thread*, %struct.thread** %4, align 8
  %103 = call i64 @TD_ON_RUNQ(%struct.thread* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load %struct.thread*, %struct.thread** %4, align 8
  %107 = call i64 @TD_CAN_RUN(%struct.thread* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct.thread*, %struct.thread** %4, align 8
  %111 = call i64 @TD_IS_RUNNING(%struct.thread* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109, %105, %101
  %114 = load i32, i32* @SRUN, align 4
  %115 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %116 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %115, i32 0, i32 20
  store i32 %114, i32* %116, align 4
  br label %148

117:                                              ; preds = %109
  %118 = load %struct.proc*, %struct.proc** %7, align 8
  %119 = call i64 @P_SHOULDSTOP(%struct.proc* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @SSTOP, align 4
  %123 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %124 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %123, i32 0, i32 20
  store i32 %122, i32* %124, align 4
  br label %147

125:                                              ; preds = %117
  %126 = load %struct.thread*, %struct.thread** %4, align 8
  %127 = call i64 @TD_IS_SLEEPING(%struct.thread* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @SSLEEP, align 4
  %131 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %132 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %131, i32 0, i32 20
  store i32 %130, i32* %132, align 4
  br label %146

133:                                              ; preds = %125
  %134 = load %struct.thread*, %struct.thread** %4, align 8
  %135 = call i64 @TD_ON_LOCK(%struct.thread* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32, i32* @SLOCK, align 4
  %139 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %140 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %139, i32 0, i32 20
  store i32 %138, i32* %140, align 4
  br label %145

141:                                              ; preds = %133
  %142 = load i32, i32* @SWAIT, align 4
  %143 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %144 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %143, i32 0, i32 20
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %129
  br label %147

147:                                              ; preds = %146, %121
  br label %148

148:                                              ; preds = %147, %113
  br label %164

149:                                              ; preds = %95
  %150 = load %struct.proc*, %struct.proc** %7, align 8
  %151 = getelementptr inbounds %struct.proc, %struct.proc* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PRS_ZOMBIE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i32, i32* @SZOMB, align 4
  %157 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %158 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %157, i32 0, i32 20
  store i32 %156, i32* %158, align 4
  br label %163

159:                                              ; preds = %149
  %160 = load i32, i32* @SIDL, align 4
  %161 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %162 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %161, i32 0, i32 20
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %159, %155
  br label %164

164:                                              ; preds = %163, %148
  %165 = load %struct.thread*, %struct.thread** %4, align 8
  %166 = getelementptr inbounds %struct.thread, %struct.thread* %165, i32 0, i32 15
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %169 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %168, i32 0, i32 19
  store i32 %167, i32* %169, align 8
  %170 = load %struct.thread*, %struct.thread** %4, align 8
  %171 = getelementptr inbounds %struct.thread, %struct.thread* %170, i32 0, i32 14
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %174 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %173, i32 0, i32 13
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  store i32 %172, i32* %175, align 4
  %176 = load %struct.thread*, %struct.thread** %4, align 8
  %177 = getelementptr inbounds %struct.thread, %struct.thread* %176, i32 0, i32 13
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %180 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %179, i32 0, i32 13
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 4
  %182 = load %struct.thread*, %struct.thread** %4, align 8
  %183 = getelementptr inbounds %struct.thread, %struct.thread* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @NOCPU, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %164
  %188 = load i8*, i8** @NOCPU_OLD, align 8
  %189 = ptrtoint i8* %188 to i64
  %190 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %191 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  br label %209

192:                                              ; preds = %164
  %193 = load %struct.thread*, %struct.thread** %4, align 8
  %194 = getelementptr inbounds %struct.thread, %struct.thread* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MAXCPU_OLD, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = load i64, i64* @MAXCPU_OLD, align 8
  %200 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %201 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  br label %208

202:                                              ; preds = %192
  %203 = load %struct.thread*, %struct.thread** %4, align 8
  %204 = getelementptr inbounds %struct.thread, %struct.thread* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %207 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %198
  br label %209

209:                                              ; preds = %208, %187
  %210 = load %struct.thread*, %struct.thread** %4, align 8
  %211 = getelementptr inbounds %struct.thread, %struct.thread* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @NOCPU, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = load i8*, i8** @NOCPU_OLD, align 8
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %219 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  br label %237

220:                                              ; preds = %209
  %221 = load %struct.thread*, %struct.thread** %4, align 8
  %222 = getelementptr inbounds %struct.thread, %struct.thread* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @MAXCPU_OLD, align 8
  %225 = icmp sgt i64 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load i64, i64* @MAXCPU_OLD, align 8
  %228 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %229 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %236

230:                                              ; preds = %220
  %231 = load %struct.thread*, %struct.thread** %4, align 8
  %232 = getelementptr inbounds %struct.thread, %struct.thread* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %235 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %234, i32 0, i32 1
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %230, %226
  br label %237

237:                                              ; preds = %236, %215
  %238 = load %struct.thread*, %struct.thread** %4, align 8
  %239 = getelementptr inbounds %struct.thread, %struct.thread* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %242 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %241, i32 0, i32 2
  store i64 %240, i64* %242, align 8
  %243 = load %struct.thread*, %struct.thread** %4, align 8
  %244 = getelementptr inbounds %struct.thread, %struct.thread* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %247 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %246, i32 0, i32 3
  store i64 %245, i64* %247, align 8
  %248 = load %struct.thread*, %struct.thread** %4, align 8
  %249 = getelementptr inbounds %struct.thread, %struct.thread* %248, i32 0, i32 12
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %252 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %251, i32 0, i32 18
  store i32 %250, i32* %252, align 4
  %253 = load %struct.thread*, %struct.thread** %4, align 8
  %254 = getelementptr inbounds %struct.thread, %struct.thread* %253, i32 0, i32 11
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %257 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %256, i32 0, i32 17
  store i32 %255, i32* %257, align 8
  %258 = load %struct.proc*, %struct.proc** %7, align 8
  %259 = getelementptr inbounds %struct.proc, %struct.proc* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %262 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %261, i32 0, i32 16
  store i32 %260, i32* %262, align 4
  %263 = load %struct.thread*, %struct.thread** %4, align 8
  %264 = getelementptr inbounds %struct.thread, %struct.thread* %263, i32 0, i32 10
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %267 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %266, i32 0, i32 15
  store i32 %265, i32* %267, align 8
  %268 = load %struct.thread*, %struct.thread** %4, align 8
  %269 = getelementptr inbounds %struct.thread, %struct.thread* %268, i32 0, i32 9
  %270 = load i64, i64* %269, align 8
  %271 = inttoptr i64 %270 to i8*
  %272 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %273 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %272, i32 0, i32 14
  store i8* %271, i8** %273, align 8
  %274 = load i32, i32* @ticks, align 4
  %275 = load %struct.thread*, %struct.thread** %4, align 8
  %276 = getelementptr inbounds %struct.thread, %struct.thread* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %274, %277
  %279 = load i32, i32* @hz, align 4
  %280 = sdiv i32 %278, %279
  %281 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %282 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 8
  %283 = load %struct.thread*, %struct.thread** %4, align 8
  %284 = getelementptr inbounds %struct.thread, %struct.thread* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %287 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %286, i32 0, i32 13
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  store i32 %285, i32* %288, align 4
  %289 = load %struct.thread*, %struct.thread** %4, align 8
  %290 = getelementptr inbounds %struct.thread, %struct.thread* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %293 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %292, i32 0, i32 13
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 4
  %295 = load i32, i32* %6, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %322

297:                                              ; preds = %237
  %298 = load %struct.thread*, %struct.thread** %4, align 8
  %299 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %300 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %299, i32 0, i32 12
  %301 = call i32 @rufetchtd(%struct.thread* %298, i32* %300)
  %302 = load %struct.thread*, %struct.thread** %4, align 8
  %303 = getelementptr inbounds %struct.thread, %struct.thread* %302, i32 0, i32 6
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @cputick2usec(i32 %305)
  %307 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %308 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %307, i32 0, i32 11
  store i32 %306, i32* %308, align 4
  %309 = load %struct.thread*, %struct.thread** %4, align 8
  %310 = call i32 @sched_pctcpu(%struct.thread* %309)
  %311 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %312 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %311, i32 0, i32 10
  store i32 %310, i32* %312, align 8
  %313 = load %struct.thread*, %struct.thread** %4, align 8
  %314 = call i32 @sched_estcpu(%struct.thread* %313)
  %315 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %316 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %315, i32 0, i32 9
  store i32 %314, i32* %316, align 4
  %317 = load %struct.thread*, %struct.thread** %4, align 8
  %318 = getelementptr inbounds %struct.thread, %struct.thread* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %321 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %320, i32 0, i32 8
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %297, %237
  %323 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %324 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %323, i32 0, i32 7
  store i64 0, i64* %324, align 8
  %325 = load i32, i32* %6, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %322
  %328 = load %struct.thread*, %struct.thread** %4, align 8
  %329 = getelementptr inbounds %struct.thread, %struct.thread* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %332 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %331, i32 0, i32 6
  store i32 %330, i32* %332, align 8
  br label %333

333:                                              ; preds = %327, %322
  %334 = load %struct.thread*, %struct.thread** %4, align 8
  %335 = getelementptr inbounds %struct.thread, %struct.thread* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %338 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %337, i32 0, i32 5
  store i32 %336, i32* %338, align 4
  %339 = load %struct.thread*, %struct.thread** %4, align 8
  %340 = call i32 @thread_unlock(%struct.thread* %339)
  %341 = load i32, i32* %6, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %333
  %344 = load %struct.proc*, %struct.proc** %7, align 8
  %345 = call i32 @PROC_STATUNLOCK(%struct.proc* %344)
  br label %346

346:                                              ; preds = %343, %333
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_STATLOCK(%struct.proc*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @strlcpy(i32, i32*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @TD_ON_LOCK(%struct.thread*) #1

declare dso_local i64 @TD_ON_RUNQ(%struct.thread*) #1

declare dso_local i64 @TD_CAN_RUN(%struct.thread*) #1

declare dso_local i64 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i64 @P_SHOULDSTOP(%struct.proc*) #1

declare dso_local i64 @TD_IS_SLEEPING(%struct.thread*) #1

declare dso_local i32 @rufetchtd(%struct.thread*, i32*) #1

declare dso_local i32 @cputick2usec(i32) #1

declare dso_local i32 @sched_pctcpu(%struct.thread*) #1

declare dso_local i32 @sched_estcpu(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PROC_STATUNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
