; ModuleID = '/home/carl/AnghaBench/git/compat/poll/extr_poll.c_poll.c'
source_filename = "/home/carl/AnghaBench/git/compat/poll/extr_poll.c_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INFTIM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@FD_ACCEPT = common dso_local global i32 0, align 4
@FD_CLOSE = common dso_local global i32 0, align 4
@FD_CONNECT = common dso_local global i32 0, align 4
@FD_OOB = common dso_local global i32 0, align 4
@FD_READ = common dso_local global i32 0, align 4
@FD_WRITE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@OPEN_MAX = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@QS_ALLINPUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@_SC_OPEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %18 = icmp ne %struct.pollfd* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @EFAULT, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %247

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  store %struct.timeval* %11, %struct.timeval** %12, align 8
  %28 = load %struct.timeval*, %struct.timeval** %12, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.timeval*, %struct.timeval** %12, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %54

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  store %struct.timeval* %11, %struct.timeval** %12, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 1000
  %38 = load %struct.timeval*, %struct.timeval** %12, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = srem i32 %40, 1000
  %42 = mul nsw i32 %41, 1000
  %43 = load %struct.timeval*, %struct.timeval** %12, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %53

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @INFTIM, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store %struct.timeval* null, %struct.timeval** %12, align 8
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %247

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %27
  store i32 -1, i32* %13, align 4
  %55 = call i32 @FD_ZERO(i32* %8)
  %56 = call i32 @FD_ZERO(i32* %9)
  %57 = call i32 @FD_ZERO(i32* %10)
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %178, %54
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %181

62:                                               ; preds = %58
  %63 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %63, i64 %65
  %67 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %178

71:                                               ; preds = %62
  %72 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %72, i64 %74
  %76 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @POLLIN, align 4
  %79 = load i32, i32* @POLLRDNORM, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %84, i64 %86
  %88 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @FD_SET(i32 %89, i32* %8)
  br label %91

91:                                               ; preds = %83, %71
  %92 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %92, i64 %94
  %96 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @POLLOUT, align 4
  %99 = load i32, i32* @POLLWRNORM, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @POLLWRBAND, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %97, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %91
  %106 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %106, i64 %108
  %110 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FD_SET(i32 %111, i32* %9)
  br label %113

113:                                              ; preds = %105, %91
  %114 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %114, i64 %116
  %118 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @POLLPRI, align 4
  %121 = load i32, i32* @POLLRDBAND, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %113
  %126 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %126, i64 %128
  %130 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @FD_SET(i32 %131, i32* %10)
  br label %133

133:                                              ; preds = %125, %113
  %134 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %134, i64 %136
  %138 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %177

142:                                              ; preds = %133
  %143 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %143, i64 %145
  %147 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @POLLIN, align 4
  %150 = load i32, i32* @POLLOUT, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @POLLPRI, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @POLLRDNORM, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @POLLRDBAND, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @POLLWRNORM, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @POLLWRBAND, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %148, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %142
  %165 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %165, i64 %167
  %169 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* @FD_SETSIZE, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %164
  %175 = load i32, i32* @EOVERFLOW, align 4
  store i32 %175, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %247

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %142, %133
  br label %178

178:                                              ; preds = %177, %70
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %58

181:                                              ; preds = %58
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  %184 = load %struct.timeval*, %struct.timeval** %12, align 8
  %185 = call i32 @select(i32 %183, i32* %8, i32* %9, i32* %10, %struct.timeval* %184)
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %4, align 4
  br label %247

190:                                              ; preds = %181
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %191

191:                                              ; preds = %242, %190
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %245

195:                                              ; preds = %191
  %196 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %196, i64 %198
  %200 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %195
  %204 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %204, i64 %206
  %208 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %207, i32 0, i32 2
  store i32 0, i32* %208, align 4
  br label %241

209:                                              ; preds = %195
  %210 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %211 = load i32, i32* %15, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %210, i64 %212
  %214 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %216, i64 %218
  %220 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @compute_revents(i32 %215, i32 %221, i32* %8, i32* %9, i32* %10)
  store i32 %222, i32* %16, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %209
  %226 = load i32, i32* %16, align 4
  %227 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %227, i64 %229
  %231 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %230, i32 0, i32 2
  store i32 %226, i32* %231, align 4
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  br label %240

234:                                              ; preds = %209
  %235 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %235, i64 %237
  %239 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %238, i32 0, i32 2
  store i32 0, i32* %239, align 4
  br label %240

240:                                              ; preds = %234, %225
  br label %241

241:                                              ; preds = %240, %203
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %15, align 4
  br label %191

245:                                              ; preds = %191
  %246 = load i32, i32* %14, align 4
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %245, %188, %174, %50, %22
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @compute_revents(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
