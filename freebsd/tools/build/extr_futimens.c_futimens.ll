; ModuleID = '/home/carl/AnghaBench/freebsd/tools/build/extr_futimens.c_futimens.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/build/extr_futimens.c_futimens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.stat = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@UTIME_NOW = common dso_local global i32 0, align 4
@UTIME_OMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @futimens(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca [2 x %struct.timeval], align 16
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %11 = load %struct.timespec*, %struct.timespec** %5, align 8
  %12 = icmp eq %struct.timespec* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load %struct.timespec*, %struct.timespec** %5, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i64 0
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UTIME_NOW, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.timespec*, %struct.timespec** %5, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i64 1
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UTIME_NOW, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %2
  store %struct.timeval* null, %struct.timeval** %8, align 8
  br label %227

28:                                               ; preds = %20, %13
  %29 = load %struct.timespec*, %struct.timespec** %5, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i64 0
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UTIME_OMIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.timespec*, %struct.timespec** %5, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i64 1
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UTIME_OMIT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %231

43:                                               ; preds = %35, %28
  %44 = load %struct.timespec*, %struct.timespec** %5, align 8
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %44, i64 0
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.timespec*, %struct.timespec** %5, align 8
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %50, i64 0
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 999999999
  br i1 %54, label %55, label %71

55:                                               ; preds = %49, %43
  %56 = load %struct.timespec*, %struct.timespec** %5, align 8
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %56, i64 0
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @UTIME_NOW, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.timespec*, %struct.timespec** %5, align 8
  %64 = getelementptr inbounds %struct.timespec, %struct.timespec* %63, i64 0
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @UTIME_OMIT, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %231

71:                                               ; preds = %62, %55, %49
  %72 = load %struct.timespec*, %struct.timespec** %5, align 8
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %72, i64 1
  %74 = getelementptr inbounds %struct.timespec, %struct.timespec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.timespec*, %struct.timespec** %5, align 8
  %79 = getelementptr inbounds %struct.timespec, %struct.timespec* %78, i64 1
  %80 = getelementptr inbounds %struct.timespec, %struct.timespec* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 999999999
  br i1 %82, label %83, label %99

83:                                               ; preds = %77, %71
  %84 = load %struct.timespec*, %struct.timespec** %5, align 8
  %85 = getelementptr inbounds %struct.timespec, %struct.timespec* %84, i64 1
  %86 = getelementptr inbounds %struct.timespec, %struct.timespec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @UTIME_NOW, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.timespec*, %struct.timespec** %5, align 8
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %91, i64 1
  %93 = getelementptr inbounds %struct.timespec, %struct.timespec* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @UTIME_OMIT, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %231

99:                                               ; preds = %90, %83, %77
  %100 = load %struct.timespec*, %struct.timespec** %5, align 8
  %101 = getelementptr inbounds %struct.timespec, %struct.timespec* %100, i64 0
  %102 = getelementptr inbounds %struct.timespec, %struct.timespec* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.timespec*, %struct.timespec** %5, align 8
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %106, i64 0
  %108 = getelementptr inbounds %struct.timespec, %struct.timespec* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 1000
  %111 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 16
  %113 = load %struct.timespec*, %struct.timespec** %5, align 8
  %114 = getelementptr inbounds %struct.timespec, %struct.timespec* %113, i64 1
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 1
  %118 = getelementptr inbounds %struct.timeval, %struct.timeval* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.timespec*, %struct.timespec** %5, align 8
  %120 = getelementptr inbounds %struct.timespec, %struct.timespec* %119, i64 1
  %121 = getelementptr inbounds %struct.timespec, %struct.timespec* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 1000
  %124 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 1
  %125 = getelementptr inbounds %struct.timeval, %struct.timeval* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  store %struct.timeval* %126, %struct.timeval** %8, align 8
  %127 = load %struct.timespec*, %struct.timespec** %5, align 8
  %128 = getelementptr inbounds %struct.timespec, %struct.timespec* %127, i64 0
  %129 = getelementptr inbounds %struct.timespec, %struct.timespec* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @UTIME_OMIT, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %99
  %134 = load %struct.timespec*, %struct.timespec** %5, align 8
  %135 = getelementptr inbounds %struct.timespec, %struct.timespec* %134, i64 1
  %136 = getelementptr inbounds %struct.timespec, %struct.timespec* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @UTIME_OMIT, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %184

140:                                              ; preds = %133, %99
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @fstat(i32 %141, %struct.stat* %9)
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 -1, i32* %3, align 4
  br label %231

145:                                              ; preds = %140
  %146 = load %struct.timespec*, %struct.timespec** %5, align 8
  %147 = getelementptr inbounds %struct.timespec, %struct.timespec* %146, i64 0
  %148 = getelementptr inbounds %struct.timespec, %struct.timespec* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @UTIME_OMIT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %157 = getelementptr inbounds %struct.timeval, %struct.timeval* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 1000
  %162 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %163 = getelementptr inbounds %struct.timeval, %struct.timeval* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 16
  br label %164

164:                                              ; preds = %152, %145
  %165 = load %struct.timespec*, %struct.timespec** %5, align 8
  %166 = getelementptr inbounds %struct.timespec, %struct.timespec* %165, i64 1
  %167 = getelementptr inbounds %struct.timespec, %struct.timespec* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @UTIME_OMIT, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 1
  %176 = getelementptr inbounds %struct.timeval, %struct.timeval* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, 1000
  %181 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 1
  %182 = getelementptr inbounds %struct.timeval, %struct.timeval* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %171, %164
  br label %184

184:                                              ; preds = %183, %133
  %185 = load %struct.timespec*, %struct.timespec** %5, align 8
  %186 = getelementptr inbounds %struct.timespec, %struct.timespec* %185, i64 0
  %187 = getelementptr inbounds %struct.timespec, %struct.timespec* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @UTIME_NOW, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %198, label %191

191:                                              ; preds = %184
  %192 = load %struct.timespec*, %struct.timespec** %5, align 8
  %193 = getelementptr inbounds %struct.timespec, %struct.timespec* %192, i64 1
  %194 = getelementptr inbounds %struct.timespec, %struct.timespec* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @UTIME_NOW, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %225

198:                                              ; preds = %191, %184
  %199 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 -1, i32* %3, align 4
  br label %231

202:                                              ; preds = %198
  %203 = load %struct.timespec*, %struct.timespec** %5, align 8
  %204 = getelementptr inbounds %struct.timespec, %struct.timespec* %203, i64 0
  %205 = getelementptr inbounds %struct.timespec, %struct.timespec* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @UTIME_NOW, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %211 = bitcast %struct.timeval* %210 to i8*
  %212 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %211, i8* align 4 %212, i64 8, i1 false)
  br label %213

213:                                              ; preds = %209, %202
  %214 = load %struct.timespec*, %struct.timespec** %5, align 8
  %215 = getelementptr inbounds %struct.timespec, %struct.timespec* %214, i64 1
  %216 = getelementptr inbounds %struct.timespec, %struct.timespec* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @UTIME_NOW, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 1
  %222 = bitcast %struct.timeval* %221 to i8*
  %223 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 4 %223, i64 8, i1 false)
  br label %224

224:                                              ; preds = %220, %213
  br label %225

225:                                              ; preds = %224, %191
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226, %27
  %228 = load i32, i32* %4, align 4
  %229 = load %struct.timeval*, %struct.timeval** %8, align 8
  %230 = call i32 @futimes(i32 %228, %struct.timeval* %229)
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %227, %201, %144, %97, %69, %42
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @futimes(i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
