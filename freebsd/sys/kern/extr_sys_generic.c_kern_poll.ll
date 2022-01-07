; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, i32, i32, i32 }
%struct.pollfd = type { i32 }
%struct.timespec = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@tc_precexp = common dso_local global i32 0, align 4
@tc_tick_sbt = common dso_local global i64 0, align 8
@maxfilesperproc = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@TDP_OLDMASK = common dso_local global i32 0, align 4
@TDF_ASTPENDING = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_poll(%struct.thread* %0, %struct.pollfd* %1, i32 %2, %struct.timespec* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.pollfd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pollfd*, align 8
  %13 = alloca [32 x %struct.pollfd], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timespec, align 8
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.pollfd* %1, %struct.pollfd** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.timespec* %3, %struct.timespec** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.timespec*, %struct.timespec** %10, align 8
  %21 = icmp ne %struct.timespec* %20, null
  br i1 %21, label %22, label %101

22:                                               ; preds = %5
  %23 = load %struct.timespec*, %struct.timespec** %10, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %242

29:                                               ; preds = %22
  %30 = load %struct.timespec*, %struct.timespec** %10, align 8
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.timespec*, %struct.timespec** %10, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 1000000000
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %6, align 4
  br label %242

41:                                               ; preds = %34
  %42 = load %struct.timespec*, %struct.timespec** %10, align 8
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.timespec*, %struct.timespec** %10, align 8
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %100

52:                                               ; preds = %46, %41
  %53 = load %struct.timespec*, %struct.timespec** %10, align 8
  %54 = bitcast %struct.timespec* %18 to i8*
  %55 = bitcast %struct.timespec* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @INT32_MAX, align 4
  %59 = sdiv i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @INT32_MAX, align 4
  %66 = sdiv i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %64, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %71
  store i64 %74, i64* %72, align 8
  br label %76

75:                                               ; preds = %52
  store i32 0, i32* %17, align 4
  br label %76

76:                                               ; preds = %75, %62
  %77 = bitcast %struct.timespec* %18 to { i64, i32 }*
  %78 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %77, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @tstosbt(i64 %79, i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* @tc_precexp, align 4
  %85 = load i32, i32* %15, align 4
  %86 = ashr i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i64 @TIMESEL(i32* %14, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %76
  %91 = load i64, i64* @tc_tick_sbt, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %90, %76
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %96, %51
  br label %102

101:                                              ; preds = %5
  store i32 -1, i32* %14, align 4
  br label %102

102:                                              ; preds = %101, %100
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @maxfilesperproc, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @FD_SETSIZE, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %6, align 4
  br label %242

112:                                              ; preds = %106, %102
  %113 = load i32, i32* %9, align 4
  %114 = getelementptr inbounds [32 x %struct.pollfd], [32 x %struct.pollfd]* %13, i64 0, i64 0
  %115 = call i32 @nitems(%struct.pollfd* %114)
  %116 = icmp sgt i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @M_TEMP, align 4
  %120 = load i32, i32* @M_WAITOK, align 4
  %121 = call %struct.pollfd* @mallocarray(i32 %118, i32 4, i32 %119, i32 %120)
  store %struct.pollfd* %121, %struct.pollfd** %12, align 8
  br label %124

122:                                              ; preds = %112
  %123 = getelementptr inbounds [32 x %struct.pollfd], [32 x %struct.pollfd]* %13, i64 0, i64 0
  store %struct.pollfd* %123, %struct.pollfd** %12, align 8
  br label %124

124:                                              ; preds = %122, %117
  %125 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %126 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = call i32 @copyin(%struct.pollfd* %125, %struct.pollfd* %126, i32 %130)
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %19, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %206

135:                                              ; preds = %124
  %136 = load i32*, i32** %11, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  %139 = load %struct.thread*, %struct.thread** %7, align 8
  %140 = load i32, i32* @SIG_SETMASK, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load %struct.thread*, %struct.thread** %7, align 8
  %143 = getelementptr inbounds %struct.thread, %struct.thread* %142, i32 0, i32 3
  %144 = call i32 @kern_sigprocmask(%struct.thread* %139, i32 %140, i32* %141, i32* %143, i32 0)
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %206

148:                                              ; preds = %138
  %149 = load i32, i32* @TDP_OLDMASK, align 4
  %150 = load %struct.thread*, %struct.thread** %7, align 8
  %151 = getelementptr inbounds %struct.thread, %struct.thread* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.thread*, %struct.thread** %7, align 8
  %155 = call i32 @thread_lock(%struct.thread* %154)
  %156 = load i32, i32* @TDF_ASTPENDING, align 4
  %157 = load %struct.thread*, %struct.thread** %7, align 8
  %158 = getelementptr inbounds %struct.thread, %struct.thread* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.thread*, %struct.thread** %7, align 8
  %162 = call i32 @thread_unlock(%struct.thread* %161)
  br label %163

163:                                              ; preds = %148, %135
  %164 = load %struct.thread*, %struct.thread** %7, align 8
  %165 = call i32 @seltdinit(%struct.thread* %164)
  br label %166

166:                                              ; preds = %202, %163
  %167 = load %struct.thread*, %struct.thread** %7, align 8
  %168 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @pollscan(%struct.thread* %167, %struct.pollfd* %168, i32 %169)
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %19, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %166
  %174 = load %struct.thread*, %struct.thread** %7, align 8
  %175 = getelementptr inbounds %struct.thread, %struct.thread* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173, %166
  br label %203

181:                                              ; preds = %173
  %182 = load %struct.thread*, %struct.thread** %7, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @seltdwait(%struct.thread* %182, i32 %183, i32 %184)
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %19, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  br label %203

189:                                              ; preds = %181
  %190 = load %struct.thread*, %struct.thread** %7, align 8
  %191 = call i32 @pollrescan(%struct.thread* %190)
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %19, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %189
  %195 = load %struct.thread*, %struct.thread** %7, align 8
  %196 = getelementptr inbounds %struct.thread, %struct.thread* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194, %189
  br label %203

202:                                              ; preds = %194
  br label %166

203:                                              ; preds = %201, %188, %180
  %204 = load %struct.thread*, %struct.thread** %7, align 8
  %205 = call i32 @seltdclear(%struct.thread* %204)
  br label %206

206:                                              ; preds = %203, %147, %134
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* @ERESTART, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @EINTR, align 4
  store i32 %211, i32* %19, align 4
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* @EWOULDBLOCK, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 0, i32* %19, align 4
  br label %217

217:                                              ; preds = %216, %212
  %218 = load i32, i32* %19, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %217
  %221 = load %struct.thread*, %struct.thread** %7, align 8
  %222 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %223 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @pollout(%struct.thread* %221, %struct.pollfd* %222, %struct.pollfd* %223, i32 %224)
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %19, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %220
  br label %231

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229, %217
  br label %231

231:                                              ; preds = %230, %228
  %232 = load i32, i32* %9, align 4
  %233 = getelementptr inbounds [32 x %struct.pollfd], [32 x %struct.pollfd]* %13, i64 0, i64 0
  %234 = call i32 @nitems(%struct.pollfd* %233)
  %235 = icmp sgt i32 %232, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %238 = load i32, i32* @M_TEMP, align 4
  %239 = call i32 @free(%struct.pollfd* %237, i32 %238)
  br label %240

240:                                              ; preds = %236, %231
  %241 = load i32, i32* %19, align 4
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %240, %110, %39, %27
  %243 = load i32, i32* %6, align 4
  ret i32 %243
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tstosbt(i64, i32) #2

declare dso_local i64 @TIMESEL(i32*, i32) #2

declare dso_local i32 @nitems(%struct.pollfd*) #2

declare dso_local %struct.pollfd* @mallocarray(i32, i32, i32, i32) #2

declare dso_local i32 @copyin(%struct.pollfd*, %struct.pollfd*, i32) #2

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #2

declare dso_local i32 @thread_lock(%struct.thread*) #2

declare dso_local i32 @thread_unlock(%struct.thread*) #2

declare dso_local i32 @seltdinit(%struct.thread*) #2

declare dso_local i32 @pollscan(%struct.thread*, %struct.pollfd*, i32) #2

declare dso_local i32 @seltdwait(%struct.thread*, i32, i32) #2

declare dso_local i32 @pollrescan(%struct.thread*) #2

declare dso_local i32 @seltdclear(%struct.thread*) #2

declare dso_local i32 @pollout(%struct.thread*, %struct.pollfd*, %struct.pollfd*, i32) #2

declare dso_local i32 @free(%struct.pollfd*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
