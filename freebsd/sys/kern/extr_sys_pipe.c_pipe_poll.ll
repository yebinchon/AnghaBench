; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, %struct.pipe* }
%struct.pipe = type { i64, i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@PIPE_ACTIVE = common dso_local global i64 0, align 8
@PIPE_EOF = common dso_local global i32 0, align 4
@PIPE_DIRECTW = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i64 0, align 8
@POLLINIGNEOF = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@PIPE_NAMED = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@PIPE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* @pipe_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_poll(%struct.file* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.pipe*, align 8
  %10 = alloca %struct.pipe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 2
  %15 = load %struct.pipe*, %struct.pipe** %14, align 8
  store %struct.pipe* %15, %struct.pipe** %9, align 8
  %16 = load %struct.pipe*, %struct.pipe** %9, align 8
  %17 = call %struct.pipe* @PIPE_PEER(%struct.pipe* %16)
  store %struct.pipe* %17, %struct.pipe** %10, align 8
  %18 = load %struct.pipe*, %struct.pipe** %9, align 8
  %19 = call i32 @PIPE_LOCK(%struct.pipe* %18)
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FREAD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @POLLIN, align 4
  %29 = load i32, i32* @POLLRDNORM, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load %struct.pipe*, %struct.pipe** %9, align 8
  %35 = getelementptr inbounds %struct.pipe, %struct.pipe* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.pipe*, %struct.pipe** %9, align 8
  %41 = getelementptr inbounds %struct.pipe, %struct.pipe* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @POLLIN, align 4
  %48 = load i32, i32* @POLLRDNORM, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %45, %39
  br label %54

54:                                               ; preds = %53, %26, %4
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FWRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %115

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @POLLOUT, align 4
  %64 = load i32, i32* @POLLWRNORM, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %61
  %69 = load %struct.pipe*, %struct.pipe** %10, align 8
  %70 = getelementptr inbounds %struct.pipe, %struct.pipe* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PIPE_ACTIVE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %106, label %74

74:                                               ; preds = %68
  %75 = load %struct.pipe*, %struct.pipe** %10, align 8
  %76 = getelementptr inbounds %struct.pipe, %struct.pipe* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PIPE_EOF, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %74
  %82 = load %struct.pipe*, %struct.pipe** %10, align 8
  %83 = getelementptr inbounds %struct.pipe, %struct.pipe* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PIPE_DIRECTW, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %81
  %89 = load %struct.pipe*, %struct.pipe** %10, align 8
  %90 = getelementptr inbounds %struct.pipe, %struct.pipe* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.pipe*, %struct.pipe** %10, align 8
  %94 = getelementptr inbounds %struct.pipe, %struct.pipe* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %92, %96
  %98 = load i64, i64* @PIPE_BUF, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %88
  %101 = load %struct.pipe*, %struct.pipe** %10, align 8
  %102 = getelementptr inbounds %struct.pipe, %struct.pipe* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100, %88, %74, %68
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @POLLOUT, align 4
  %109 = load i32, i32* @POLLWRNORM, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = load i32, i32* %12, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %106, %100, %81
  br label %115

115:                                              ; preds = %114, %61, %54
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @POLLIN, align 4
  %118 = load i32, i32* @POLLINIGNEOF, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @POLLPRI, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @POLLRDNORM, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @POLLRDBAND, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %116, %125
  store i32 %126, i32* %11, align 4
  %127 = load %struct.pipe*, %struct.pipe** %9, align 8
  %128 = getelementptr inbounds %struct.pipe, %struct.pipe* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PIPE_NAMED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %115
  %134 = load %struct.file*, %struct.file** %5, align 8
  %135 = getelementptr inbounds %struct.file, %struct.file* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FREAD, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %133
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.file*, %struct.file** %5, align 8
  %145 = getelementptr inbounds %struct.file, %struct.file* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.pipe*, %struct.pipe** %9, align 8
  %148 = getelementptr inbounds %struct.pipe, %struct.pipe* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load i32, i32* @POLLINIGNEOF, align 4
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %151, %143, %140, %133, %115
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @POLLINIGNEOF, align 4
  %158 = and i32 %156, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %193

160:                                              ; preds = %155
  %161 = load %struct.pipe*, %struct.pipe** %9, align 8
  %162 = getelementptr inbounds %struct.pipe, %struct.pipe* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @PIPE_EOF, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %160
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @POLLIN, align 4
  %170 = load i32, i32* @POLLRDNORM, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = load i32, i32* %12, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %12, align 4
  %175 = load %struct.pipe*, %struct.pipe** %10, align 8
  %176 = getelementptr inbounds %struct.pipe, %struct.pipe* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @PIPE_ACTIVE, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %167
  %181 = load %struct.pipe*, %struct.pipe** %10, align 8
  %182 = getelementptr inbounds %struct.pipe, %struct.pipe* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @PIPE_EOF, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180, %167
  %188 = load i32, i32* @POLLHUP, align 4
  %189 = load i32, i32* %12, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %187, %180
  br label %192

192:                                              ; preds = %191, %160
  br label %193

193:                                              ; preds = %192, %155
  %194 = load i32, i32* %12, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %257

196:                                              ; preds = %193
  %197 = load %struct.file*, %struct.file** %5, align 8
  %198 = getelementptr inbounds %struct.file, %struct.file* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @FREAD, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %196
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @POLLIN, align 4
  %206 = load i32, i32* @POLLRDNORM, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %203
  %211 = load %struct.thread*, %struct.thread** %8, align 8
  %212 = load %struct.pipe*, %struct.pipe** %9, align 8
  %213 = getelementptr inbounds %struct.pipe, %struct.pipe* %212, i32 0, i32 3
  %214 = call i32 @selrecord(%struct.thread* %211, i32* %213)
  %215 = load %struct.pipe*, %struct.pipe** %9, align 8
  %216 = getelementptr inbounds %struct.pipe, %struct.pipe* %215, i32 0, i32 3
  %217 = call i64 @SEL_WAITING(i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %210
  %220 = load i32, i32* @PIPE_SEL, align 4
  %221 = load %struct.pipe*, %struct.pipe** %9, align 8
  %222 = getelementptr inbounds %struct.pipe, %struct.pipe* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %219, %210
  br label %226

226:                                              ; preds = %225, %203, %196
  %227 = load %struct.file*, %struct.file** %5, align 8
  %228 = getelementptr inbounds %struct.file, %struct.file* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @FWRITE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %256

233:                                              ; preds = %226
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @POLLOUT, align 4
  %236 = load i32, i32* @POLLWRNORM, align 4
  %237 = or i32 %235, %236
  %238 = and i32 %234, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %233
  %241 = load %struct.thread*, %struct.thread** %8, align 8
  %242 = load %struct.pipe*, %struct.pipe** %10, align 8
  %243 = getelementptr inbounds %struct.pipe, %struct.pipe* %242, i32 0, i32 3
  %244 = call i32 @selrecord(%struct.thread* %241, i32* %243)
  %245 = load %struct.pipe*, %struct.pipe** %10, align 8
  %246 = getelementptr inbounds %struct.pipe, %struct.pipe* %245, i32 0, i32 3
  %247 = call i64 @SEL_WAITING(i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %240
  %250 = load i32, i32* @PIPE_SEL, align 4
  %251 = load %struct.pipe*, %struct.pipe** %10, align 8
  %252 = getelementptr inbounds %struct.pipe, %struct.pipe* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %249, %240
  br label %256

256:                                              ; preds = %255, %233, %226
  br label %257

257:                                              ; preds = %256, %193
  %258 = load %struct.pipe*, %struct.pipe** %9, align 8
  %259 = call i32 @PIPE_UNLOCK(%struct.pipe* %258)
  %260 = load i32, i32* %12, align 4
  ret i32 %260
}

declare dso_local %struct.pipe* @PIPE_PEER(%struct.pipe*) #1

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i64 @SEL_WAITING(i32*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
